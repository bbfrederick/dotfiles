
eval "$(/opt/homebrew/bin/brew shellenv)"

# FSL Setup
FSLDIR=/opt/fsl-latest
PATH=${FSLDIR}/share/fsl/bin:${PATH}
export FSLDIR PATH
. ${FSLDIR}/etc/fslconf/fsl.sh
