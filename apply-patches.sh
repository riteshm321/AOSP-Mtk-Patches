echo $1
rootdirectory="$PWD"
dirs="bionic fmradio frameworks/av frameworks/base frameworks/native frameworks/opt/telephony system/core system/netd system/sepolicy packages/apps/settings"
for dir in $dirs ; do
	cd $rootdirectory
	cd $dir
	echo "Applying $dir patches..."
	git apply $rootdirectory/device/coolpad/note3/patches/$dir/*.patch
	echo " "
done
echo "Changing to build directory..."
cd $rootdirectory
