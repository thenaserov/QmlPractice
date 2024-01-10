# Additional clean files
cmake_minimum_required(VERSION 3.16)

if("${CONFIG}" STREQUAL "" OR "${CONFIG}" STREQUAL "Debug")
  file(REMOVE_RECURSE
  "CMakeFiles\\appBasic_data_types_autogen.dir\\AutogenUsed.txt"
  "CMakeFiles\\appBasic_data_types_autogen.dir\\ParseCache.txt"
  "appBasic_data_types_autogen"
  )
endif()
