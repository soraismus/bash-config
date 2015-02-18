# 5 June 2013
# alias ..="cd .."
# alias ...="cd ../.."
# alias docs="cd ~/docs"
alias bdocs="pushd ~/docs"
# alias d="cd ~/d"
alias bd="pushd ~/d"

# 11 June 2013
alias bash_aliases="vim ~/.bash_aliases"
alias bashrc="vim ~/.bashrc"
alias bash_functions="vim ~/.bash_functions"
alias bash_exports="vim ~/.bash_exports"
alias sourceb="source ~/.bashrc; source ~/.bash_aliases; source ~/.bash_functions; source ~/.bash_exports"
alias b="back"
alias b2="back 2"
alias b3="back 3"
alias b4="back 4"
alias go="record_and_change_directory"
alias ..="cd ..; record_directory $PWD"
alias ...="cd ../..; record_directory $PWD"
alias docs="go ~/docs"
alias d="go ~/d"

# 15 June 2013
alias memory="less /proc/meminfo"

# 24 June 2013
# alias ...="../.."
# alias ....="../../.."

# 11 July 2013
alias cs="cscope -d"

# 31 July 2013
alias r='rake'

# 1 August 2013
#alias irb='irb --noprompt'

# 4 August 2013
alias irb='irb --prompt simple'

# 5 August 2013
alias cd..='cd ..'

# 29 September 2013
alias st="git status"

# 5 October 2013
alias agi="sudo apt-get install"

# 7 October 2013
# if user is not root, pass all the following commands via sudo
if [ $UID -ne 0 ]; then
  # alias reboot='sudo reboot'
  alias aptall='sudo apt-get install'
  # alias upgrade='sudo apt-get upgrade'
fi

alias .4='cd ../../../..'
alias .5='cd ../../../../..'

# start calculator with math support
alias bc='bc -l'

# generate sha1 digest
alias sha1='openssl sha1'

# create parent directories automatically
alias mkdir='mkdir -pv'

# colorize diff output
# install colordiff package
# alias diff='colordiff'

alias h='history'
alias j='jobs -l'
alias path='echo -e ${PATH//:/\\n}'
alias now='date +"%T'
alias nowtime=now
alias nowdate='date +"%d-%m-%Y"'
alias snano='sudo nano'
alias edit='nano'

# stop after sending count ECHO_REQUEST packets
alias ping='ping -c 5'
# do not wait interval 1 second; go fast
alias fastping='ping -c 1000 -s.2'

# show open ports
alias ports='netstat -tulanp'

# shortcut for sudo iptables
alias ipt='sudo /sbin/iptables'

# display all iptables rules
alias iptlist='sudo /sbin/iptables -L -n -v --line-numbers'
alias iptlistin='sudo /sbin/iptables -L INPUT -n -v --line-numbers'
alias iptlistout='sudo /sbin/iptables -L OUTPUT -n -v --line-numbers'
alias iptlistfw='sudo /sbin/iptables -L FORWARD -n -v --line-numbers'
alias firewall=iptlist

# debug web server / cdn problems with curl
# get web server headers
alias header='curl -I'
# determine whether remote server supports gzip / mod_deflate
alias headerc='curl - I --compress'

alias update='sudo apt-get update && sudo apt-get upgrade'

# become root
alias root='sudo -i'
# alias su='sudo -i'

# control web servers
# alias nginxreload='sudo /usr/local/nginx/sbin/nginx -s reload'
# alias nginxtest='sudo /usr/local/nginx/sbin/nginx -t'
# alias lightyload='sudo /etc/init.d/lighttpd reload'
# alias lightytest='sudo /etc/init.d/lighttpd -f /etc/lighttpd/lighttpd.conf -t'
# alias httpdreload='sudo /usr/sbin/apachectl -k reload'
# alias httpdtest='sudo /usr/sbin/apachectl -t && /usr/sbin/apachectl -t -D DUMP_VHOSTS'

# alias into backups
# if cron fails or if want to back up on demand
# alias backup='sudo /home/scripts/admin/scripts/backup/wrapper.backup.sh --type local --target /raid1/backups'
# alias rsnapshothourly='sudo /home/scripts/admin/scripts/backup/wrapper.rsnapshot.sh --type remote --target nas03 --auth /home/scripts/admin/.authdata/ssh.keys --config /home/scripts/admin/scripts/backup/config/ads1.conf'

# set default interfaces for sys/admin-related commands
#alias dnstop='dnstop -1 5 eth1'
#alias vnstat='vnstat -i eth1'
#alias iftop='iftop-i eth1'
#alias tcpdump='tcpdump -i eth1'
#alias ethtool='ethtool eth1'
#alias iwconfig='iwconfig wlan0'

# system resources
alias meminfo='free -m -l -t'
alias psmem='ps auxf | sort -nr -k 4'
alias psmem10='ps auxf | sort -nr -k 4 | head -10'
alias pscpu='ps auxf | sort -nr -k 3'
alias pscpu10='ps auxf | sort -nr -k 3 | head -10'
# get server cpu info
alias cpuinfo='lscpu'
# get GPU ram
alias gpumeminfo='grep -i --color memory /var/log/Xorg.0.log'

# control home router
# reboot home Linksys WAG160N / WAG54 / WAG320 / WAG120N Router / Gateway from *nix
#alias rebootlinksys="curl -u 'admin:my-super-password' 'http://192.168.1.2/setup.cgi?todo=reboot'"
# reboot tomato-based ASUS NT16 wireless bridge
#alias reboottomato="ssh admin@192.168.1.1 /sbin/reboot"

# resume wget by default
alias wget='wget u-c'

# 8 October 2013
alias gemsets='rvm gemsets'

# 9 October 2013
alias rvmc='rvm current'

# 10 October 2013
alias gedit='gedit --background'
alias bash_settings='nano ~/.bash_settings'
alias rmdir='rm -rf'
alias d='date'
alias ff='find . -name $1'

# 13 October 2013
alias ls='ls -ABX --group-directories-first --color=auto'
alias wortolisto='vim ~/docs/wortolistoj/wortolisto'
alias v='vim'

# 22 October 2013
# doesn't work
# alias L='| less'

# 24 October 2013
alias h?='history | grep'

# 29 October 2013
alias linksd='links duckduckgo.com'

# 8 November 2013
alias sv='sudo vim'

# Sat Nov 30 10:07:57 EST 2013
alias igrep='grep -i'

# Thu Jan 16 17:59:47 EST 2014
# by Matthew Might
alias ducks='du -cks * | sort -rn | head'

# Sun Jul 20 22:51:15 EDT 2014
alias bm='bookmark'

# Mon Jul 28 12:41:06 EDT 2014
#alias cough='~/projects/cough-syrup/bin/cough'

# Sun Sep 21 07:22:37 EDT 2014
alias gitst='git st'

# Mon Oct 20 12:47:00 EDT 2014
alias echox='echo $(xclip -o)'

# Mon Dec  1 12:30:08 EST 2014
alias quit='exit'

# Sat Dec 27 20:46:12 EST 2014
alias crowserify="browserify -t coughify --extension='.cough'"

# Sat Jan  3 12:23:17 EST 2015
alias gitd='git d'
