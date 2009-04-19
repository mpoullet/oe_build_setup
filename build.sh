#!/bin/bash
unset CROSS_COMPILE
export OE_HOME="${HOME}/oe"
export OE_OLAY_OE="${OE_HOME}/openembedded"
export OE_OLAY_LOCAL="${OE_HOME}/local"

export BBPATH="${OE_OLAY_LOCAL}:${OE_OLAY_OE}"
export PATH="${OE_OLAY_OE}/bitbake/bin:$PATH"

# bitbake 1.8.12 filters env except for that specified in BB_ENV_EXTRAWHITE  
export BB_ENV_EXTRAWHITE="OE_HOME OE_OLAY_OE OE_OLAY_LOCAL"

if [ ! -d openembedded ]; then
git clone git://git.openembedded.org/openembedded.git
cd openembedded
git checkout -b stable/2009 origin/stable/2009
cd -
fi

if [ $# -gt 0 ]; then
echo "###################################"
echo "Start building $1 ..."
echo "###################################"

#bitbake base-image; bitbake console-image; bitbake x11-image 

time bitbake $@

echo "###################################"
else
echo "Usage: build.sh <package>, where <package> could be e.g. base-image, console-image or x11-image, or whatever you want"
exit 1
fi
