# FSL setup
FSLDIR=/usr/local/fsl-6.0.4
. ${FSLDIR}/etc/fslconf/fsl.sh
PATH=${FSLDIR}/bin:${PATH}
export FSLDIR PATH

# freesurfer stuff
NO_MINC=True
NO_FSFAST=True
if [ -d /Applications/freesurfer ]; then
    FREESURFER_HOME=/Applications/freesurfer
    source ${FREESURFER_HOME}/SetUpFreeSurfer.sh
    TUTORIAL_DATA=/Volumes/PictureBackup/buckner_data/tutorial_subjs
    SUBJECTS_DIR=~/Documents/MR_data/SURFER
    FS_LICENSE=${FREESURFER_HOME}/.license
else
    echo "freesurfer not installed, skipping"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/frederic/opt/anaconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/frederic/opt/anaconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/frederic/opt/anaconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/frederic/opt/anaconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

