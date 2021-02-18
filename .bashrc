# .bashrc

source ~/.bash_profile

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

alias mirage="ssh inpt nc mirage 2222"
alias irc="ssh -t alonzo 'su weechat -c \"tmux a\"'"
alias xmpp="ssh -t alonzo 'su poezio -c \"tmux a\"'"
alias fxmem="ps ax  -o rss,cmd |grep firefox |cut -f1 -d' ' | awk 'BEGIN{counter=0;}{counter+=\$1;}END {print counter \"kB\";}'"
#alias jbuild="rm -rf /tmp/e33 && mkdir -p /tmp/e33 && javac -d /tmp/e33 main/CalcView.java -g && java -cp /tmp/e33 main.CalcView"
alias rsynci="rsync -e \"ssh -J inpt\""

#export MOZCONFIG="/home/nightmared/dev/mozilla-central/.mozconfig2"
#export MOZ_ACCELERATED=1

alias vm7-sigma="virt-manager -c qemu+ssh://root@sigma/system"
alias vm7-omega="virt-manager -c qemu+ssh://root@omega/system"
alias fboxmnt="sudo mount.cifs -o guest,uid=1000,vers=1.0 //192.168.1.254/Disque\ dur $HOME/mnt/"

alias muslrust='docker run -v cargo-cache:/root/.cargo/registry -v $PWD:/volume --rm -it clux/muslrust cargo build'
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/nightmared/dev/n7/gls/TPtest/sdkman"
#[[ -s "/home/nightmared/dev/n7/gls/TPtest/sdkman/bin/sdkman-init.sh" ]] && source "/home/nightmared/dev/n7/gls/TPtest/sdkman/bin/sdkman-init.sh"
alias discord="env -i DISPLAY=:0 XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR flatpak run com.discordapp.Discord &"

#export PATH="$HOME/fuchsia/.jiri_root/bin:$HOME/.local/bin:$HOME/local/bin:$PATH"
#alias zoom="DISPLAY=:0 XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR LD_LIBRARY_PATH=/var/lib/flatpak/app/us.zoom.Zoom/x86_64/stable/active/files/extra/zoom QT_QPA_PLATFORM=xcb /var/lib/flatpak/app/us.zoom.Zoom/x86_64/stable/active/files/extra/zoom/zoom"
alias zoom="/var/lib/flatpak/app/us.zoom.Zoom/x86_64/stable/active/files/extra/zoom/zoom"

export PS1="\[\033[1;32m\][\[\e]0;\u@\h: \w\a\]\u@\h:\w]\$\[\033[0m\] "

