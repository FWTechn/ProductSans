MODDIR=${0%/*}

sed 's/<\/familyset>//g' /system/etc/fonts.xml | cat - $MODDIR/fallback.xml > $MODDIR/system/etc/fonts.xml

if getprop ro.product.manufacturer |
        grep -qE -e "^samsung"; then
		cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/SamsungColorEmoji.ttf
		sed 's/<\/familyset>//g' /system/etc/fonts_additional.xml | cat - $MODDIR/fallback.xml > $MODDIR/system/etc/fonts_additional.xml
fi

if getprop ro.product.manufacturer |
        grep -qE -e "^LGE"; then
		cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/LGNotoColorEmoji.ttf
fi

if getprop ro.product.manufacturer |
        grep -qE -e "^HTC"; then
		cp $MODDIR/system/fonts/NotoColorEmoji.ttf $MODDIR/system/fonts/HTC_ColorEmoji.ttf
fi

cp $MODDIR/system/product/fonts/GoogleSans-Italic.ttf $MODDIR/system/product/fonts/Lato-Italic.ttf
cp $MODDIR/system/product/fonts/GoogleSans-Italic.ttf $MODDIR/system/product/fonts/Rubik-Italic.ttf
cp $MODDIR/system/product/fonts/Rubik-Regular.ttf $MODDIR/system/product/fonts/ArbutusSlab-Regular.ttf
cp $MODDIR/system/product/fonts/Rubik-Regular.ttf $MODDIR/system/product/fonts/BigShouldersText-ExtraBold.ttf
cp $MODDIR/system/product/fonts/Rubik-Regular.ttf $MODDIR/system/product/fonts/Fraunces-Regular.ttf
cp $MODDIR/system/product/fonts/Rubik-Regular.ttf $MODDIR/system/product/fonts/Karla-Regular.ttf
cp $MODDIR/system/product/fonts/Rubik-Regular.ttf $MODDIR/system/product/fonts/Lato-Regular.ttf
cp $MODDIR/system/product/fonts/Rubik-Regular.ttf $MODDIR/system/product/fonts/Lustria-Regular.ttf
cp $MODDIR/system/product/fonts/Rubik-Medium.ttf $MODDIR/system/product/fonts/Barlow-Medium.ttf
cp $MODDIR/system/product/fonts/Rubik-Medium.ttf $MODDIR/system/product/fonts/Lato-Medium.ttf
cp $MODDIR/system/product/fonts/Rubik-Medium.ttf $MODDIR/system/product/fonts/ZillaSlab-Medium.ttf
cp $MODDIR/system/product/fonts/Rubik-MediumItalic.ttf $MODDIR/system/product/fonts/Lato-MediumItalic.ttf
cp $MODDIR/system/product/fonts/Rubik-MediumItalic.ttf $MODDIR/system/product/fonts/ZillaSlab-MediumItalic.ttf
cp $MODDIR/system/product/fonts/Rubik-BoldItalic.ttf $MODDIR/system/product/fonts/Lato-BoldItalic.ttf
cp $MODDIR/system/product/fonts/Rubik-BoldItalic.ttf $MODDIR/system/product/fonts/ZillaSlab-SemiBoldItalic.ttf
cp $MODDIR/system/product/fonts/Rubik-Bold.ttf $MODDIR/system/product/fonts/Barlow-Bold.ttf
cp $MODDIR/system/product/fonts/Rubik-Bold.ttf $MODDIR/system/product/fonts/BigShouldersText-Bold.ttf
cp $MODDIR/system/product/fonts/Rubik-Bold.ttf $MODDIR/system/product/fonts/Fraunces-SemiBold.ttf
cp $MODDIR/system/product/fonts/Rubik-Bold.ttf $MODDIR/system/product/fonts/Lato-Bold.ttf
cp $MODDIR/system/product/fonts/Rubik-Bold.ttf $MODDIR/system/product/fonts/ZillaSlab-SemiBold.ttf
cp $MODDIR/system/fonts/Roboto-Italic.ttf $MODDIR/system/fonts/RobotoCondensed-Italic.ttf
cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/RobotoCondensed-Light.ttf
cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/RobotoCondensed-Regular.ttf
cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/Roboto-Light.ttf
cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/RobotoStatic-Regular.ttf
cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/Roboto-Thin.ttf
cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/RobotoNum-3L.ttf
cp $MODDIR/system/fonts/Roboto-LightItalic.ttf $MODDIR/system/fonts/RobotoCondensed-LightItalic.ttf
cp $MODDIR/system/fonts/Roboto-LightItalic.ttf $MODDIR/system/fonts/Roboto-ThinItalic.ttf
cp $MODDIR/system/fonts/Roboto-MediumItalic.ttf $MODDIR/system/fonts/RobotoCondensed-MediumItalic.ttf
cp $MODDIR/system/fonts/Roboto-BoldItalic.ttf $MODDIR/system/fonts/Roboto-BlackItalic.ttf
cp $MODDIR/system/fonts/Roboto-BoldItalic.ttf $MODDIR/system/fonts/RobotoCondensed-BoldItalic.ttf
cp $MODDIR/system/fonts/Roboto-Medium.ttf $MODDIR/system/fonts/RobotoCondensed-Medium.ttf
cp $MODDIR/system/fonts/Roboto-Bold.ttf $MODDIR/system/fonts/Roboto-Black.ttf
cp $MODDIR/system/fonts/Roboto-Bold.ttf $MODDIR/system/fonts/RobotoCondensed-Bold.ttf
cp $MODDIR/system/fonts/Roboto-Bold.ttf $MODDIR/system/fonts/RobotoNum-3R.ttf

sed -i 's@SomcUDGothic-Light.ttf@null.ttf@g' $MODDIR/system/etc/fonts.xml
sed -i 's@SomcUDGothic-Regular.ttf@null.ttf@g' $MODDIR/system/etc/fonts.xml
sed -i 's@OpFont-@Roboto-@g' $MODDIR/system/etc/fonts.xml
sed -i 's@NotoSerif-@Roboto-@g' $MODDIR/system/etc/fonts.xml
if [ -f /system/fonts/SysFont-Regular.ttf ]; then
	sed -i 's@style="normal">SysFont-Regular.ttf@style="normal">Roboto-Regular.ttf@g' $MODDIR/system/etc/fonts.xml
	sed -i 's@style="italic">SysFont-Regular.ttf@style="italic">Roboto-Regular.ttf@g' $MODDIR/system/etc/fonts.xml
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/SysFont-Regular.ttf
fi
if [ -f /system/fonts/SysFont-Static-Regular.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/SysFont-Static-Regular.ttf
fi
if [ -f /system/fonts/SysSans-En-Regular.ttf ]; then
	sed -i 's@SysSans-En-Regular@Roboto-Regular@g' $MODDIR/system/etc/fonts.xml
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/SysSans-En-Regular.ttf
fi
/system/bin/sed -i -z 's@<family name="sans-serif">\n    <!-- # MIUI Edit Start -->.*<!-- # MIUI Edit END -->@<family name="sans-serif">@' $MODDIR/system/etc/fonts.xml
if [ -e /system/fonts/MiSansVF.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiSansVF.ttf
fi
if [ -e /system/fonts/MiSansVF_Overlay.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiSansVF_Overlay.ttf
fi
if [ -e /system/fonts/MitypeVF.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MitypeVF.ttf
fi
if [ -e /system/fonts/MiClock.otf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiClock.otf
fi
if [ -e /system/fonts/MiClockMono.otf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiClockMono.otf
fi
if [ -e /system/fonts/MiClockThin.otf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiClockMono.otf
fi
if [ -e /system/fonts/MiClockTibetan.otf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiClockTibetan.otf
fi
if [ -e /system/fonts/MiClockUyghur.otf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiClockUyghur.otf
fi
if [ -e /system/fonts/MitypeClock.otf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MitypeClock.otf
fi
if [ -e /system/fonts/MitypeClockMono.otf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MitypeClockMono.otf
fi
if [ -e /system/fonts/MitypeMonoVF.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiClockUyghur.otf
fi
if [ -e /system/fonts/MiuiEx-Bold.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiuiEx-Bold.ttf
fi
if [ -e /system/fonts/MiuiEx-Light.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiuiEx-Light.ttf
fi
if [ -e /system/fonts/MiuiEx-Regular.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/MiuiEx-Regular.ttf
fi
if [ -e /system/fonts/VivoFont.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/VivoFont.ttf
fi
if [ -e /system/fonts/DroidSansFallbackBBK.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/DroidSansFallbackBBK.ttf
fi
if [ -e /system/fonts/HYQiHei-50.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/HYQiHei-50.ttf
fi
if [ -e /system/fonts/DroidSansFallbackBBK.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/DroidSansFallbackBBK.ttf
fi
if [ -e /system/fonts/DroidSansFallbackMonster.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/DroidSansFallbackMonster.ttf
fi
if [ -e /system/fonts/DroidSansFallbackZW.ttf ]; then
	cp $MODDIR/system/fonts/Roboto-Regular.ttf $MODDIR/system/fonts/DroidSansFallbackZW.ttf
fi
opslate=fonts_slate.xml
if [ -e /system/etc/$opslate ]; then
    cp /system/etc/$opslate $MODDIR/system/etc
	remove_ja $MODDIR/system/etc/$opslate
	add_ja $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Thin.ttf@Roboto-Light.ttf@g' $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Light.ttf@Roboto-Light.ttf@g' $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Book.ttf@Roboto-Regular.ttf@g' $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Regular.ttf@Roboto-Regular.ttf@g' $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Medium.ttf@Roboto-Medium.ttf@g' $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Bold.ttf@Roboto-Bold.ttf@g' $MODDIR/system/etc/$opslate
	sed -i 's@SlateForOnePlus-Black.ttf@Roboto-Bold.ttf@g' $MODDIR/system/etc/$opslate
fi
oos11=fonts_base.xml
if [ -e /system/etc/$oos11 ]; then
    cp /system/etc/$oos11 $MODDIR/system/etc
	remove_ja $MODDIR/system/etc/$oos11
	add_ja $MODDIR/system/etc/$oos11
	sed -i 's@NotoSerif-@Roboto-@g' $MODDIR/system/etc/$oos11
fi
oos12=fonts_base.xml
if [ -e /system/system_ext/etc/$oos12 ]; then
    cp /system/system_ext/etc/$oos12 $MODDIR/system/system_ext/etc
	remove_ja $MODDIR/system/system_ext/etc/$oos12
	add_ja $MODDIR/system/system_ext/etc/$oos12
	sed -i 's@SysSans-En-Regular@Roboto-Regular@g' $MODDIR/system/system_ext/etc/$oos12
	sed -i 's@NotoSerif-@Roboto-@g' $MODDIR/system/system_ext/etc/$oos12
fi
oos12c=fonts_customization.xml
if [ -e /system/system_ext/etc/$oos12c ]; then
    cp /system/system_ext/etc/$oos12c $MODDIR/system/system_ext/etc
	sed -i 's@OplusSansText-25Th@Roboto-Light@g' $MODDIR/system/system_ext/etc/$oos12c
	sed -i 's@OplusSansText-35ExLt@Roboto-Light@g' $MODDIR/system/system_ext/etc/$oos12c
	sed -i 's@OplusSansText-45Lt@Roboto-Light@g' $MODDIR/system/system_ext/etc/$oos12c
	sed -i 's@OplusSansText-55Rg@Roboto-Regular@g' $MODDIR/system/system_ext/etc/$oos12c
	sed -i 's@OplusSansText-65Md@Roboto-Medium@g' $MODDIR/system/system_ext/etc/$oos12c
	sed -i 's@NHGMYHOplusHK-W4@Roboto-Regular@g' $MODDIR/system/system_ext/etc/$oos12c
	sed -i 's@NHGMYHOplusPRC-W4@Roboto-Regular@g' $MODDIR/system/system_ext/etc/$oos12c
	sed -i 's@OplusSansDisplay-45Lt@Roboto-Light@g' $MODDIR/system/system_ext/etc/$oos12c
fi
oos12p=fonts_customization.xml
if [ -e /system/product/etc/$oos12p ]; then
    cp /system/product/etc/$oos12p $MODDIR/system/product/etc
	sed -i 's@OplusSansText-25Th@Roboto-Light@g' $MODDIR/system/product/etc/$oos12p
	sed -i 's@OplusSansText-35ExLt@Roboto-Light@g' $MODDIR/system/product/etc/$oos12p
	sed -i 's@OplusSansText-45Lt@Roboto-Light@g' $MODDIR/system/product/etc/$oos12p
	sed -i 's@OplusSansText-55Rg@Roboto-Regular@g' $MODDIR/system/product/etc/$oos12p
	sed -i 's@OplusSansText-65Md@Roboto-Medium@g' $MODDIR/system/product/etc/$oos12p
	sed -i 's@NHGMYHOplusHK-W4@Roboto-Regular@g' $MODDIR/system/product/etc/$oos12p
	sed -i 's@NHGMYHOplusPRC-W4@Roboto-Regular@g' $MODDIR/system/product/etc/$oos12p
	sed -i 's@OplusSansDisplay-45Lt@Roboto-Light@g' $MODDIR/system/product/etc/$oos12p
fi
