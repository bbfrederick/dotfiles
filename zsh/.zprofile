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
if [ -d "${HOME}/opt/anaconda3" ];then
    CONDADIR=opt/anaconda3
else
    CONDADIR=opt/miniconda3
fi
echo "CONDADIR set to "${CONDADIR}

# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('${HOME}/${CONDADIR}/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "${HOME}/${CONDADIR}/etc/profile.d/conda.sh" ]; then
        . "${HOME}/${CONDADIR}/etc/profile.d/conda.sh"
    else
        export PATH="${HOME}/${CONDADIR}/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<

# add datalad and friends
PATH=${HOME}/.local/bin:$PATH
PATH=/usr/local/sbin:$PATH

