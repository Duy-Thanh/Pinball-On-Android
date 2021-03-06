find_package(Opus CONFIG)
if(NOT TARGET Opus::opus)
  find_package(PkgConfig REQUIRED)
  pkg_check_modules(Opus REQUIRED IMPORTED_TARGET opus)
  set_target_properties(PkgConfig::Opus PROPERTIES IMPORTED_GLOBAL TRUE)
  add_library(Opus::opus ALIAS PkgConfig::Opus)
endif()
