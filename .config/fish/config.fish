alias a=alias
#a sshn='ssh -t natural@nclvm.com "screen -dR"'
#a sshn='ssh -t natural@nclvm.com "tmux a -t SyA"'
#a sshnclean='ssh natural@nclvm.com'
#a sshnn='ssh -t natural@nclvm.com "cd /home/natural/webapps/rails/natural/; /bin/bash"'
#a sshnua='ssh natural@nclvm.com "sh cas2all/all.sh"'
#a sshnus='ssh natural@nclvm.com "sh cas2all/scripts.sh"'
#a sshnrr='ssh natural@nclvm.com "./webapps/railscontrolnatural/bin/restart"'
#a suspend='sudo /usr/sbin/pm-suspend'

a pcmanfm="sh /usr/bin/dbus-pcmanfm.sh"

a rn="sudo service network-manager restart"

# set the correct color for tmux to work well with vim solarized 
# https://github.com/jaiyalas/dot-rc/blob/master/_config/fish/config.fish 
set TERM xterm-256color
