# Add in the tools I'm used to
alias resource="source ${HOME}/.zshrc"
alias c="clear"
alias topi="ssh raspberrypi.local. -l pi"
alias ftppi="sftp pi@raspberrypi.local."
alias to4t="rlogin mclean4t2.mclean.harvard.edu -l vnmr1"
alias ls="ls -CF"
alias ci="vi"
alias sum="paste -sd+ - | bc"
alias vmsize="ps -o pid,rss,vsz,comm -ax | sort -k3n"
alias tohms="ssh -XYC o2.hms.harvard.edu -l bdf1"
alias tohmsxfer="ssh -XYC transfer.rc.hms.harvard.edu -l bdf1"
alias toeris="ssh -XYC erisone.partners.org -l bbf2"
alias toumass="ssh -XYC ghpcc06.umassrc.org -l cm31w"
alias tocluster="ssh -XYC micc.mclean.harvard.edu"
alias toclusterroot="ssh -XYC micc.mclean.harvard.edu -l root"
alias totesla1="ssh -XYC tesla1.mclean.harvard.edu"
alias hist="history 1"

#history file
export HISTFILE=${ZDOTDIR:-$HOME}/.zsh_history

#set history size
export HISTSIZE=5000

#save history after logout
export SAVEHIST=5000

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
setopt CORRECT_ALL

#add timestamp for each entry
setopt EXTENDED_HISTORY   

# Initialize autocomplete
autoload -Uz compinit && compinit

# set autopushd
setopt AUTO_PUSHD

# set the prompt
#PROMPT='%F{45}%1~%f %# '
PROMPT='%F{45}%~%f %# '
