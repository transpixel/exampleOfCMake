#
# Example command
#

mkdir ./build ./tmplocal
cd build
cmake -DCMAKE_INSTALL_PREFIX=../tmplocal/ ..
# would generally run ccmake here to setup configuration (use defaults here)
cmake --build . --clean-first
./tst/uinterface  # run local build copy

cmake --build . --target install

cd ..
rm -r ./build

tree tmplocal

