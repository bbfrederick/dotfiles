#alias killwine="killall -9 wineserver && killall -9 wine64-preloader"
#alias intelsh="arch -x86_64 /bin/zsh"
#
## FSL Setup
#FSLDIR=/opt/fsl-latest
#PATH=${FSLDIR}/share/fsl/bin:${PATH}
#export FSLDIR PATH
#. ${FSLDIR}/etc/fslconf/fsl.sh

# FSL Setup
FSLDIR=/opt/fsl-6.0.7.13
PATH=${FSLDIR}/share/fsl/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh
