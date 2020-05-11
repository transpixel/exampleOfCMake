#
# Example command
#

# create and configure build environment
mkdir ./build ./tmplocal ./tmplocal/buildInfo/
cd build
# would generally run ccmake here to setup configuration (use defaults here)
cmake -DCMAKE_INSTALL_PREFIX=../tmplocal/ ..

# create dependency graph info
cmake --graphviz=graphInfo.dot .
dot -Tpng -o ../tmplocal/buildInfo/graphInfo.png graphInfo.dot

# build system
cmake --build . --clean-first

# generate install package
cpack
cp ExampleOfCMake*.deb ../tmplocal/buildInfo/

# run one of the executables
./tst/uinterface  # run local build copy


# install components localy
cmake --build . --target install


# cleanup
cd ..
# rm -r ./build

# display (modified) install tree
tree tmplocal

