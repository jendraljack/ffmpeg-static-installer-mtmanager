#!/system/bin/sh
curdir="$(dirname $(realpath $0))"
echo "#### Ffmpeg arm installer ####"
echo "#### Author: Supriyadi ####"
if [ ! -f "$curdir/ffmpeg" ]
then
echo "Silahkan simpan ffmpeg pada $curdir"
kill -9 $$
fi
echo "#### Tunggu sebentar... ###"
sleep 4
echo "Memasang ffmpeg pada $(dirname $(readlink /proc/$$/exe)):$PATH"
cp $curdir/ffmpeg $(dirname $(readlink /proc/$$/exe))/ffmpeg
chmod 0755 "$(dirname $(readlink /proc/$$/exe))/ffmpeg"
sleep 5
#ffmpeg
echo selesai\ sudah
