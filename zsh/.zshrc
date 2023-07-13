echo "running .zshrc"

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
alias tohms="ssh -Y o2.hms.harvard.edu -l bdf1"
alias tohmsxfer="ssh -Y transfer.rc.hms.harvard.edu -l bdf1"
alias toeris="ssh -Y erisone.partners.org -l bbf2"
alias totesla1="ssh -Y tesla1.mclean.harvard.edu"
alias tocluster="ssh -Y micc.mclean.harvard.edu -l frederic"
alias tocluster2="ssh -Y mickey.mclean.harvard.edu -l frederic"
alias toaws="aws s3 ls --profile AWSAdministratorAccess-434245788206"
alias yawsso="yawsso -p AWSAdministratorAccess-434245788206"
#alias runbatch="aws batch submit-job $(./batch-stack-info) --job-name rapidtiderunarr --array-properties size=2 --container-overrides command=bash,/data_out/config/rapidtide-HCPYA,ARRAY,REST1,RL"
alias awsrelog="open https://massgeneralbrighamresearch.awsapps.com/start#/"


# #history file
#export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history
#
# Treat the '!' character specially during expansion.
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
    source ~proto/.bashrc.master
    source ~/.zshrc-mickey
fi
if [ -f /cm/shared/.cluster-name-micc ]; then
    source ~proto/.bashrc.master
    source ~/.zshrc-micc
fi

if [ "${architecture}" = "Darwin" ]; then
    if [ "${instructionset}" = "arm64" ]; then
        source ~/.zshrc-armmac
    else
        source ~/.zshrc-intelmac
    fi
fi

# set the prompt to the spiffy starship one
export STARSHIP_CONFIG=${HOME}/.starship.toml
eval "$(starship init zsh)"

if [ "$(arch)" = "arm64" ]; then
    eval "$(/opt/homebrew/bin/brew shellenv)"
else
    eval "$(/usr/local/bin/brew shellenv)"
fi

# >>> conda initialize >>>
# !! Contents within this block are managed by 'conda init' !!
__conda_setup="$('/Users/frederic/miniconda3/bin/conda' 'shell.zsh' 'hook' 2> /dev/null)"
if [ $? -eq 0 ]; then
    eval "$__conda_setup"
else
    if [ -f "/Users/frederic/miniconda3/etc/profile.d/conda.sh" ]; then
        . "/Users/frederic/miniconda3/etc/profile.d/conda.sh"
    else
        export PATH="/Users/frederic/miniconda3/bin:$PATH"
    fi
fi
unset __conda_setup
# <<< conda initialize <<<
