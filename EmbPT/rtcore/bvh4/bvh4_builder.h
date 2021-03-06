// ======================================================================== //
// Copyright 2009-2011 Intel Corporation                                    //
//                                                                          //
// Licensed under the Apache License, Version 2.0 (the "License");          //
// you may not use this file except in compliance with the License.         //
// You may obtain a copy of the License at                                  //
//                                                                          //
//     http://www.apache.org/licenses/LICENSE-2.0                           //
//                                                                          //
// Unless required by applicable law or agreed to in writing, software      //
// distributed under the License is distributed on an "AS IS" BASIS,        //
// WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. //
// See the License for the specific language governing permissions and      //
// limitations under the License.                                           //
// ======================================================================== //

#ifndef __EMBREE_BVH4_BUILDER_H__
#define __EMBREE_BVH4_BUILDER_H__

#include "bvh4.h"
#include "triangle4.h"
#include "../common/builder.h"
#include "../common/object_binning.h"
#include "../common/object_binning_parallel.h"

namespace embree
{
  /* BVH4 builder. The builder is multi-threaded and implements 3
   * different build strategies. 1) Small tasks are finished in a
   * single thread (BuildTask) 2) Medium sized tasks are split into
   * two tasks using a single thread (SplitTask) and 3) Large tasks
   * are split into two tasks in a parallel fashion
   * (ParallelSplitTask). */

  class BVH4Builder : private Builder
  {
  public:

    /*! API entry function for the builder */
    static Ref<BVH4<Triangle4> > build(const BuildTriangle* triangles, size_t numTriangles);

  public:

    /*! Constructs the builder. */
    BVH4Builder(const BuildTriangle* triangles, size_t numTriangles, Ref<BVH4<Triangle4> > bvh);

    /*! Selects between full build, single-threaded split, and multi-threaded split strategy. */
    void recurse(int& nodeID, size_t depth, const BuildRange& job);

    /*! Selects between full build and single-threaded split strategy. */
    void recurse(int& nodeID, size_t depth, const ObjectBinning<2>& job);

    /*! Computes the number of blocks of a number of triangles. */
    static __forceinline size_t blocks(size_t x) { return (x+3)/4; }

    /*! Single-threaded task that builds a complete BVH. */
    class BuildTask {
      ALIGNED_CLASS
    public:

      /*! Default task construction. */
      BuildTask(BVH4Builder* parent, int& nodeID, size_t depth, const ObjectBinning<2>& job);

      /*! Task entry function. */
      static void run(size_t tid, BuildTask* This, size_t elts);

      /*! Recursively finishes the BVH construction. */
      int recurse(size_t depth, ObjectBinning<2>& job);

    private:
      BVH4Builder* parent;   //!< Pointer to parent task.
      size_t       tid;      //!< Task ID for fast thread local storage.
      int&         nodeID;   //!< Reference to output the node ID.
      size_t       depth;    //!< Recursion depth of the root of this subtree.
      ObjectBinning<2> job;  //!< Binner for performing splits.
    };

    /*! Single-threaded task that builds a single node and creates subtasks for the children. */
    class SplitTask {
      ALIGNED_CLASS
    public:

      /*! Default task construction. */
      SplitTask(BVH4Builder* parent, int& nodeID, size_t depth, const ObjectBinning<2>& job);

      /*! Task entry function. */
      void split(); static void _split(size_t tid, SplitTask* This, size_t elts) { This->split(); }

    private:
      BVH4Builder* parent;   //!< Pointer to parent task.
      int&         nodeID;   //!< Reference to output the node ID.
      size_t       depth;    //!< Recursion depth of this node.
      ObjectBinning<2> job;  //!< Binner for performing splits.
    };

    /*! Multi-threaded task that builds a single node and creates
     *  subtasks for the children. The box array has to have twice the
     *  size of the triangle array, as the parallel binner does not
     *  split in-place. It has to copy the boxes from the left half to
     *  the right half and vice versa. */

    class ParallelSplitTask {
      ALIGNED_CLASS
    public:

      /*! Default task construction. */
      ParallelSplitTask(BVH4Builder* parent, int& nodeID, size_t depth, const BuildRange& job);

      /*! Compute target location for parallel binning job. It the
       *  boxes are in the left half of the box array we copy into the
       *  right half and vice versa. */
      __forceinline size_t target(const BuildRange& r) {
        return r.start() < parent->numTriangles ? r.start()+parent->numTriangles : r.start()-parent->numTriangles;
      }

      /*! initial stage: tests if leaf node has to be generated */
      void stage0(size_t tid); static void _stage0(size_t tid, ParallelSplitTask* This) { This->stage0(tid); }

      /*! 1st stage: splits the right sub-job of the best child. */
      void stage1(size_t tid); static void _stage1(size_t tid, ParallelSplitTask* This) { This->stage1(tid); }

      /*! 2nd stage: splits the left sub-job of the best child. */
      void stage2(size_t tid); static void _stage2(size_t tid, ParallelSplitTask* This) { This->stage2(tid); }

      /*! 3rd stage: finds the best child to proceed with or creates the node */
      void stage3(size_t tid); static void _stage3(size_t tid, ParallelSplitTask* This) { This->stage3(tid); }

    private:
      BVH4Builder* parent;                  //!< Pointer to parent task.
      int&         nodeID;                  //!< Reference to output the node ID.
      size_t       depth;                   //!< Recursion depth of this node.
      ObjectBinningParallel<2> children[4]; //!< Parallel Binners for the children.
      size_t numChildren;                   //!< Current number of children.
      ssize_t bestChild;                    //!< Child with best cost to split next.
    };

  public:
    const BuildTriangle* triangles;     //!< Source triangle array
    size_t numTriangles;                //!< Number of triangles
    Box* prims;                         //!< Working array. Build tasks operate on ranges in this array. */
    Ref<BVH4<Triangle4> > bvh;          //!< BVH to overwrite
  };
}

#endif
