
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
add_subdirectory(inc) # project library public interface (e.g. c++ headers)
add_subdirectory(src) # project source code
add_subdirectory(tst) # unit tests (check source code operation)
add_subdirectory(vnv) # user/app validation tests

# set(CPACK_PACKAGE_NAME ${PROJECT_NAME}) # same as default
set(CPACK_PACKAGE_VENDOR "PackageVendor") # ? not used by debian generator?
set(CPACK_PACKAGE_VERSION_MAJOR ${PROJECT_VERSION_MAJOR})
set(CPACK_PACKAGE_VERSION_MINOR ${PROJECT_VERSION_MINOR})
set(CPACK_PACKAGE_VERSION_PATCH ${PROJECT_VERSION_PATCH})
set(CPACK_PACKAGE_VERSION_TWEAK ${PROJECT_VERSION_TWEAK})

# Override default install location for testing this package
# In general default (no command here) will install to /usr/{lib,bin,...}
# - but here, set package to isolated location for easier/safer testing
set(CPACK_PACKAGING_INSTALL_PREFIX "/tmp/${PROJECT_NAME}")

# distro packaging
set(CPACK_GENERATOR "DEB")
set(CPACK_DEBIAN_PACKAGE_DEPENDS
	"libc6 (>= 2.28), libgcc1 (>= 1:8)" # arbitrary - as example
	)
set(CPACK_DEBIAN_PACKAGE_MAINTAINER "PackageMaintainer")


include(CPack)

