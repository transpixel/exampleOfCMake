
cmake_minimum_required(VERSION 3.10)

project(
	ExampleOfCMake
	VERSION 0.0.1
	DESCRIPTION "Example of CMake to build deb library package"
	LANGUAGES CXX
	)

# Genreal package compile configuration
# Note: can use target_compile_features() to customize individual target flags
add_compile_options(-std=c++11 -pedantic)

# unit test capabilities - enable before add_subdirectory() calls
include(CTest)
enable_testing()

# project tree
add_subdirectory(src)
add_subdirectory(tst)

# distro packaging
set(CPACK_GENERATOR "DEB")
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "stc")
include(CPack)

