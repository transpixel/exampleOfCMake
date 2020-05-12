#
# Example command
#

# create and configure build environment
mkdir ./tmpBuild ./tmpLocalInstall ./tmpLocalInstall/buildInfo/
cd tmpBuild
# would generally run ccmake here to setup configuration (use defaults here)
cmake -DCMAKE_INSTALL_PREFIX=../tmpLocalInstall/ ..

# create dependency graph info
cmake --graphviz=graphInfo.dot .
dot -Tpng -o ../tmpLocalInstall/buildInfo/graphInfo.png graphInfo.dot

# build system
cmake --build . --clean-first

# generate install package
cpack
cp ExampleOfCMake*.deb ../tmpLocalInstall/buildInfo/

# run one of the executables
./tst/uinterface  # run local build copy


# install components localy
cmake --build . --target install


# cleanup
cd ..
# rm -r ./tmpBuild

# display (modified) install tree
tree tmpLocalInstall

