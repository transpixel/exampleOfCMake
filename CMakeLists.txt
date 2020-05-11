
cmake_minimum_required(VERSION 3.10)

project(
	ExampleOfCMake
	VERSION 0.0.1
	DESCRIPTION "Example of CMake to build deb library package"
	LANGUAGES CXX
	)

# Package desired custom compile options
# however: can use target_compile_features instead
# add_compile_options(-std=c++11 -pedantic)

add_subdirectory(src)
add_subdirectory(tst)

