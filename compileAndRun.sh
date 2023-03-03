target=$(head -n 1 CurrentExecutable.txt)
pathAndName="build"$target
echo "Building in " $pathAndName
cd $pathAndName
time ninja
success=$?
if [ $success -eq 0 ]
then
	echo
	echo "Running program."
	./$target $@
else
	echo "Build failed."
fi
