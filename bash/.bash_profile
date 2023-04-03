# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/frederic/opt/anaconda3/bin/conda' 'shell.bash' 'hook' 2> /dev/null)"
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


# added by VMTK 1.4.0 installer
export PATH="/Users/frederic/vmtk/bin:$PATH"

# auto-inserted by @update.afni.binaries :
export DYLD_LIBRARY_PATH=${DYLD_LIBRARY_PATH}:/opt/X11/lib/flat_namespace

# auto-inserted by @update.afni.binaries :
#    set up tab completion for AFNI programs
if [ -f $HOME/.afni/help/all_progs.COMP.bash ]
then
   source $HOME/.afni/help/all_progs.COMP.bash
fi

