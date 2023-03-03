echo Running Cmake Script
pathAndName="build"$1
if [ $# -eq 1 ]; 
then
  echo "Calling Cmake for target" $1
  echo "Writing build files inside "$pathAndName
  cd $pathAndName
  success=$?
  if [ $success -ne 0 ] 
  then
    echo "### Error: No building folder with the name" $pathAndName "exists ###"
    exit 0
  fi
  #Use nina as build system
  cmake -G Ninja \
    -D EXECUTABLE=$1 \
    -D CMAKE_BUILD_TYPE=RelWithDebInfo \
    -D CMAKE_CXX_COMPILER=$(which g++) \
    -D CMAKE_LINKER=$(which lld) \
    -D CMAKE_CXX_FLAGS="-fuse-ld=lld" .. 
  cd ..
  echo $1 > CurrentExecutable.txt
  else 
  cd build
  echo "Error: Please supply the name of the Executable you want to build. You can choose any cpp file in the mainfiles folder"
fi