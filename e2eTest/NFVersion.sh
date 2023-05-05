#script su sekilde calistirilmali
#source ./NFVersion.sh cnrnrf $mode(release veya debug)
#source ./NFVersion.sh cnrnrf release
#!/bin/bash
echo "NF name: $1"
echo "mode: $2"
NF_PAKET_ADI=$1
Mode=$2
if [ "$Mode" == "release" ]; then 
export VERSION="$(apt-cache show ${NF_PAKET_ADI} | grep Version | cut -d' ' -f2 | head -1)"
echo NF Version $VERSION
elif [ "$Mode" == "debug" ]; then
export VERSION="$(apt-cache show ${NF_PAKET_ADI} | grep Version | cut -d' ' -f2 |  grep debug | head -1)"
echo NF Version $VERSION
fi
