# Replace to Product Sans
REPLACE="
"

APILEVEL=$(getprop ro.build.version.sdk)
if [ $APILEVEL -lt 14 ] ; then
	abort "Will work on all device if Android 4.0 later"
fi
