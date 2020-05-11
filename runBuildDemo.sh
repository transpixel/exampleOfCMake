#
# Example command
#

mkdir ./build
cd build
cmake ..
# would generally run ccmake here to setup configuration (use defaults here)
cmake --build . --clean-first
./tst/uinterface
cd ..

rm -r ./build


