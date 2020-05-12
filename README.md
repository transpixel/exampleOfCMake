# exampleOfCMake

Example CMake/CTest/CPack usage for a simple "project".

This, ExampleOfCMake, "project" includes a simple directory hierarchy
including a {source,include,test,validation} subdirectory structure. This
structure is simple, yet complex enough to demonstrate many of the
considerations that need to be addressed in practice - but may not be
address in overly simple CMake example/tutorials or can be lost in the
ocean of detail comprising the cmake.org documention.

Example use of
 * CMake
 * CTest
 * CPack

Example of typical developer operations including:
 * Core project software implimentation (via CMake)
 * Unit tests (building and running) (via CMake/CTest)
 * Validation (V&V)/acceptance  (via CMake/CTest)
 * Creating a distribtion package (via CMake/CPack)

Example of "non-trivial" project structure
 * * inc/ public interface (package header files)
 * * src/ implementation behind public interface, and local code
 * * tst/ developer unit test programs and common test infrastructure code
 * * vnv/ user validation (and verification) programs

The material of primary interest is provided by the content within 
the number of CMakeLists.txt files which illustrate building, testing
and packaging activities for this simple skeleton code.

The file runBuildDemo.sh contains examples of various command line actions
(if a system is configured exactly right, this might actually run as a script
however, file content is intended only as an example of the command-line
useage). The commands in the file illustrate:
 * Building the source code
 * Running unit and validation tests
 * Creating (Debian) distro package

