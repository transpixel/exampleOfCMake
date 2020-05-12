#
# Example commands using cmake/ctest (implicitly cpack)
#
# (unlikely to run on arbitrary system unless at least the following
# utilities are installed (and perhaps not then)
#  - cmake (obviously)
#  - tree (displayed graphic directory hierarchy)
#  - graphviz (graphics drawing tools - 'dot' program, etc)
#  - dpkg (debian package manager)
#

# create and configure build environment
mkdir ./tmpBuild ./tmpLocalInstall ./tmpLocalInstall/buildInfo/


# CMake (cpack,ctest) commands are in natural habitat at top of build tree
# In general, this build tree can be considered somewhat "transitory"
# (relative to source, installs and distro packages at least) - although
# the build tree likely stays around during project development activity
cd tmpBuild

# would generally run ccmake here to setup configuration (use defaults here)
# e.g. interactively do this (and more) with 'ccmake' or 'cmake-gui'
cmake -DCMAKE_INSTALL_PREFIX=../tmpLocalInstall/ ..

# create dependency graph info
cmake --graphviz=graphInfo.dot .
dot -Tpng -o ../tmpLocalInstall/buildInfo/graphInfo.png graphInfo.dot

# build the overall project
cmake --build . --clean-first

# run test suite
# https://gitlab.kitware.com
#	/cmake/community/-/wikis/doc/ctest/Testing-With-CTest
ctest


# generate distro package
cpack
cp ExampleOfCMake*.deb ../tmpLocalInstall/buildInfo/ # pretend archives


# install components locally (uses the INSTALL_PREFIX from above)
cmake --build . --target install


# sillyscript cleanup
cd ..
rm -r ./tmpBuild

# The locally installed results and "archived" distro packages survive
# the build process (and no longer use the directory structure)
# Also if project is just being installed for general use, the overall
# project source tree (e.g. from a repo clone) could be removed at this point.

# display (modified) install tree
tree tmpLocalInstall

# report package info - Package name from toplevel cmake project()
dpkg --info ./tmpLocalInstall/buildInfo/ExampleOfCMake-*.deb
dpkg --contents ./tmpLocalInstall/buildInfo/ExampleOfCMake-*.deb

