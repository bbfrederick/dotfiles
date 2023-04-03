# Lines configured by zsh-newuser-install
HISTFILE=~/.histfile
# End of lines configured by zsh-newuser-install
# The following lines were added by compinstall
zstyle :compinstall filename "${HOME}/.zshrc"

HISTSIZE=10000000
SAVEHIST=10000000


autoload -Uz compinit
compinit
# End of lines added by compinstall

# Add in the tools I'm used to
alias resource="source ${HOME}/.zshrc"
alias c="clear"
alias ls="ls -CF"
alias ci="vi"
alias hist="history 1"

# Add shortcuts to get to other machines
alias to4t="rlogin mclean4t2.mclean.harvard.edu -l vnmr1"
alias to94t="rlogin mclean94t2.mclean.harvard.edu -l vnmr1"
alias tohms="ssh -XYC o2.hms.harvard.edu -l bdf1"
alias tohmsxfer="ssh -XYC transfer.rc.hms.harvard.edu -l bdf1"
alias toeris="ssh -XYC erisone.partners.org -l bbf2"
alias totesla1="ssh -XYC tesla1.mclean.harvard.edu"
alias tocluster="ssh -XYC micc.mclean.harvard.edu -l frederic"
alias tocluster2="ssh -XYC mickey.mclean.harvard.edu -l frederic"


# #history file
#export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
#
setopt BANG_HIST                 

# Delete old recorded entry if new entry is a duplicate.
setopt HIST_IGNORE_ALL_DUPS      

# Don't record an entry starting with a space.
setopt HIST_IGNORE_SPACE         

# Don't write duplicate entries in the history file.
setopt HIST_SAVE_NO_DUPS         

# Don't execute immediately upon history expansion.
setopt HIST_VERIFY               

# Beep when accessing nonexistent history.
setopt HIST_BEEP                 

# share history across multiple zsh sessions
setopt SHARE_HISTORY

# append to history
setopt APPEND_HISTORY

# adds commands as they are typed, not at shell exit
setopt INC_APPEND_HISTORY

# expire duplicates first
setopt HIST_EXPIRE_DUPS_FIRST

# do not store duplications
setopt HIST_IGNORE_DUPS

#ignore duplicates when searching
setopt HIST_FIND_NO_DUPS

# removes blank lines from history
setopt HIST_REDUCE_BLANKS

# allow zsh to correct commands
setopt CORRECT
#setopt CORRECT_ALL

#add timestamp for each entry
setopt EXTENDED_HISTORY

# set autopushd
setopt AUTO_PUSHD

# set the prompt
#PROMPT='%F{45}%~%f %# '

# now do machine specific configuration
architecture=`uname`
instructionset=`uname -m`

echo "architecture is "${architecture}", instruction set is "${instructionset}

if [ -f /cm/shared/.cluster-name-mickey ]; then
   source ~/.zshrc-mickey
fi
if [ -f /cm/shared/.cluster-name-micc ]; then
   source ~/.zshrc-micc
fi

if [ "${architecture}" = "Darwin" ]; then
    if [ "${instructionset}" = "arm64" ]; then
        source ~/.zshrc-armmac
    else
        source ~/.zshrc-intelmac
    fi
fi
