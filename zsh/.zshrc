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

#set history size
export HISTSIZE=5000

#save history after logout
export SAVEHIST=5000

#history file
export HISTFILE=~/.zhistory

#append into history file
setopt INC_APPEND_HISTORY

#save only one command if 2 common are same and consistent
setopt HIST_IGNORE_DUPS

#add timestamp for each entry
setopt EXTENDED_HISTORY   

# Initialize autocomplete
autoload -Uz compinit && compinit

# set autopushd
setopt AUTO_PUSHD

# set the prompt
#PROMPT='%F{45}%1~%f %# '
PROMPT='%F{45}%~%f %# '
