## ======================================================================== ##
## Copyright 2009-2011 Intel Corporation                                    ##
##                                                                          ##
## Licensed under the Apache License, Version 2.0 (the "License");          ##
## you may not use this file except in compliance with the License.         ##
## You may obtain a copy of the License at                                  ##
##                                                                          ##
##     http://www.apache.org/licenses/LICENSE-2.0                           ##
##                                                                          ##
## Unless required by applicable law or agreed to in writing, software      ##
## distributed under the License is distributed on an "AS IS" BASIS,        ##
## WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied. ##
## See the License for the specific language governing permissions and      ##
## limitations under the License.                                           ##
## ======================================================================== ##

FIND_PACKAGE(GLUT REQUIRED)
FIND_PACKAGE(OpenGL REQUIRED)

INCLUDE_DIRECTORIES(${CMAKE_CURRENT_SOURCE_DIR})

ADD_EXECUTABLE(embree
  embree.cpp
  scene.cpp
  glutdisplay.cpp
  regression.cpp
  embreedevice.cpp
  lexers/stringstream.cpp
  lexers/tokenstream.cpp
  importers/obj.cpp
  importers/assimp_import.cpp
  importers/xml.cpp
  importers/xml_parser.cpp
  importers/radiance_import.cpp
)

TARGET_LINK_LIBRARIES(embree sys image renderer assimp GLEW ${OPENGL_LIBRARY} ${GLUT_LIBRARY})
