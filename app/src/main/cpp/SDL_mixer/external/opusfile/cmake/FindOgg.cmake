find_package(Ogg CONFIG)
if(NOT TARGET Ogg::ogg)
  find_package(PkgConfig REQUIRED)
  pkg_check_modules(Ogg REQUIRED IMPORTED_TARGET ogg)
  set_target_properties(PkgConfig::Ogg PROPERTIES IMPORTED_GLOBAL TRUE)
  add_library(Ogg::ogg ALIAS PkgConfig::Ogg)
endif()
