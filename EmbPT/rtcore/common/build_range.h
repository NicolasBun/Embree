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

#ifndef __EMBREE_BUILD_RANGE_H__
#define __EMBREE_BUILD_RANGE_H__

#include "default.h"

namespace embree
{
  /*! Build job. Contains all information required to initiate the
   *  build for a range of primitives. */
  struct BuildRange
  {
    /*! Default constructor. */
    __forceinline BuildRange () {}

    /*! Construct range from members. */
    __forceinline BuildRange (size_t start, size_t N, const Box& geomBounds, const Box& centBounds)
      : geomBounds(geomBounds), centBounds(centBounds)
    {
      this->geomBounds.lower.i[3] = (int)start;
      this->geomBounds.upper.i[3] = (int)N;
    }

    /*! Returns the start. */
    __forceinline size_t start() const { return geomBounds.lower.i[3]; }

    /*! Returns the end. */
    __forceinline size_t end() const { return start()+size(); }

    /*! Returns the number of primitives. */
    __forceinline size_t size() const { return geomBounds.upper.i[3]; }

    /*! Moves the range to a different start location. */
    __forceinline void moveTo(size_t start) { geomBounds.lower.i[3] = (int)start; }

  public:
    Box geomBounds;   //!< Geometry bounds of primitives (also stores start and end of range)
    Box centBounds;   //!< Centroid bounds of primitives
  };
}
#endif

