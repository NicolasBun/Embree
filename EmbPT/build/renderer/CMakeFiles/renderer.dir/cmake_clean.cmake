FILE(REMOVE_RECURSE
  "CMakeFiles/renderer.dir/api/api.o"
  "CMakeFiles/renderer.dir/lights/hdrilight.o"
  "CMakeFiles/renderer.dir/shapes/trianglemesh.o"
  "CMakeFiles/renderer.dir/shapes/trianglemesh_normals.o"
  "CMakeFiles/renderer.dir/shapes/trianglemesh_consistent_normals.o"
  "CMakeFiles/renderer.dir/samplers/sampler.o"
  "CMakeFiles/renderer.dir/samplers/distribution1d.o"
  "CMakeFiles/renderer.dir/samplers/distribution2d.o"
  "CMakeFiles/renderer.dir/integrators/pathtraceintegrator.o"
  "CMakeFiles/renderer.dir/integrators/directlightingintegrator.o"
  "CMakeFiles/renderer.dir/filters/filter.o"
  "CMakeFiles/renderer.dir/renderers/debugrenderer.o"
  "CMakeFiles/renderer.dir/renderers/materialrenderer.o"
  "CMakeFiles/renderer.dir/renderers/openglrenderer.o"
  "CMakeFiles/renderer.dir/renderers/integratorrenderer.o"
  "../librenderer.pdb"
  "../librenderer.a"
)

# Per-language clean rules from dependency scanning.
FOREACH(lang CXX)
  INCLUDE(CMakeFiles/renderer.dir/cmake_clean_${lang}.cmake OPTIONAL)
ENDFOREACH(lang)
