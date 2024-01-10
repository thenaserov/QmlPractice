# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appProperty_binding_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appProperty_binding_autogen.dir\\ParseCache.txt"
  "appProperty_binding_autogen"
  )
endif()
