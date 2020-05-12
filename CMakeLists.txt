
cmake_minimum_required(VERSION 3.10)

project(
	ExampleOfCMake
	VERSION 1.2.3
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
add_subdirectory(src) # project source code
add_subdirectory(tst) # unit tests (check source code operation)
add_subdirectory(vnv) # user/app validation tests

# set(CPACK_PACKAGE_NAME ${PROJECT_NAME}) # default
set(CPACK_PACKAGE_VENDOR "PackageVendor")
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${PROJECT_VERSION_TWEAK})
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "PackageMaintainer")
# override install location for testing this package
# generally use default (don't set this)
set(CPACK_PACKAGING_INSTALL_PREFIX "/tmp")

# distro packaging
set(CPACK_GENERATOR "DEB")

include(CPack)

