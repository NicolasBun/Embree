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

#include "rtcore.h"
#include "bvh2/bvh2_builder.h"
#include "bvh2/bvh2_builder_spatial.h"
#include "bvh2/bvh2_to_bvh4.h"
#include "bvh2/bvh2_traverser.h"
#include "bvh4/bvh4_builder.h"
#include "bvh4/bvh4_traverser.h"

#include <string>

namespace embree
{
  Ref<Intersector> rtcCreateAccel(const char* type, const BuildTriangle* triangles, size_t numTriangles)
  {
    if      (!strcmp(type,"default"     )) return new BVH4Traverser(BVH4Builder::build(triangles,numTriangles));
    else if (!strcmp(type,"bvh2"        )) return new BVH2Traverser(BVH2Builder::build(triangles,numTriangles));
    else if (!strcmp(type,"bvh2.spatial")) return new BVH2Traverser(BVH2BuilderSpatial::build(triangles,numTriangles));
    else if (!strcmp(type,"bvh4"        )) return new BVH4Traverser(BVH4Builder::build(triangles,numTriangles));
    else if (!strcmp(type,"bvh4.spatial")) {
      Ref<BVH2<Triangle4> > bvh2 = BVH2BuilderSpatial::build(triangles,numTriangles);
      return new BVH4Traverser(BVH2ToBVH4::convert(bvh2));
    }
    else {
      throw std::runtime_error("invalid acceleration structure: "+std::string(type));
      return null;
    }
  }
}
