# set some variables
setenv PATH "/sbin:/etc:${PATH}"
setenv MANPATH	"/usr/share/man"

# accomodate XFree86
setenv MANPATH "${MANPATH}:/usr/X11R6/man:/usr/local/man:/usr/local/X11/man"
#setenv PATH "${PATH}:/usr/X11R6/bin:/usr/local/X11/bin:/usr/local/bin"
setenv PATH "${PATH}:/opt/X11/bin:/opt/local/X11/bin:/usr/local/bin"

# Add in the tools I'm used to
alias	resource 'source ${HOME}/.cshrc'
alias	c	clear
alias	topi	'ssh raspberrypi.local.' -l pi
alias	ftppi	'sftp pi@raspberrypi.local.'
alias	to4t	'rlogin mclean4t2.mclean.harvard.edu -l vnmr1'
alias	ls	'ls -CF'
alias	ci	'vi'
alias   sum     'paste -sd+ - | bc'

setenv CVSROOT :pserver:frederic@gizmo.mclean.harvard.edu:/usr/local/CVS
setenv SVN_EDITOR vi

setenv PATH ".:${HOME}/bin:${HOME}/bin/bv:${HOME}/code/rapidtide/rapidtide:${HOME}/code/rapidtide/scripts:${HOME}/code/plethproc:${HOME}/bin/fmristability:${HOME}/bin/fsl:${PATH}"

# C compilation stuff
setenv COPTIMIZE -O
setenv MYLIBS /Users/frederic/lib

# Voxbo stuff
setenv VOXBODIR "/usr/local/voxbo"
setenv PATH "${VOXBODIR}/bin:${PATH}"

setenv LIBHASH 'ranlib -a'

# FSL Configuration
if ( -e /usr/local/fsl ) then
    setenv FSLDIR /usr/local/fsl
    source ${FSLDIR}/etc/fslconf/fsl.csh
    setenv PATH "${FSLDIR}/bin:${PATH}"
    setenv FIXDIR /usr/local/fix
    setenv AROMADIR /usr/local/ICA-AROMA
    setenv PATH "${AROMADIR}:${FIXDIR}:${PATH}"
    setenv LD_LIBRARY_PATH /usr/local/lib:/usr/share/lib:${FSLDIR}/lib
    endif

# freesurfer stuff
if ( -e /Applications/freesurfer ) then
    setenv FREESURFER_HOME /Applications/freesurfer
    source $FREESURFER_HOME/SetUpFreeSurfer.csh
    setenv TUTORIAL_DATA /Volumes/PictureBackup/buckner_data/tutorial_subjs
    setenv SUBJECTS_DIR ~/Documents/MR_data/SURFER
    endif

# check for uncommitted CVS files
alias cvscheck 'cvs status | grep tatus | egrep -v Up-to-date'

# Add in AFNI tools
setenv PATH /usr/local/AFNI:$PATH

# configure ssh on Mac Pro
alias tomp ssh -2 -6 -X frederic@bbf-mp.38265877.members.btmm.icloud.com
alias ftpmp sftp -2 -6 frederic@bbf-mp.38265877.members.btmm.icloud.com

# add support for caret
#setenv PATH ${PATH}:/Applications/caret/bin_macosx64:${SUBJECTS_DIR}/freesurfer_to_fs_LR

# matlab
setenv PATH ${PATH}:/Applications/MATLAB_R2016b.app/bin

# MacPorts stuff
setenv PATH "/opt/local/bin:/opt/local/sbin:/opt/local/Library/Frameworks/Python.framework/Versions/Current/bin:$PATH"
alias listports 'sudo port -qv installed requested and active'
setenv MANPATH "/opt/local/man:${MANPATH}"

# add anaconda python
setenv PATH ~/anaconda/bin:${PATH}

# add connectome workbench files
setenv PATH /Applications/workbench/bin_macosx64:${PATH}

#setenv DYLD_LIBRARY_PATH "/opt/X11/lib"
