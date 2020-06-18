# .bashrc

# If not running interactively, don't do anything
[[ $- != *i* ]] && return

export EDITOR=nvim
export HISTSIZE=25000
export HISTCONTROL=ignoreboth

export GOPATH="$HOME/dev/go"

PS1='\u@\h:\W\$ '

export PATH="$HOME/.cabal/bin:$HOME/.local/bin:$HOME/bin:$HOME/prog/bin:$HOME/.cargo/bin:$PATH:/opt/MATLAB/R2018b/bin"
export WLR_DRM_DEVICES="/dev/dri/card0"
#export XDG_DATA_DIRS="/usr/share:/usr/local/share"
export PKG_CONFIG_PATH="/usr/lib/pkgconfig:/usr/local/lib/pkgconfig:$HOME/prog/lib/pkgconfig:$HOME/prog/lib64/pkgconfig"
export MANPATH="/usr/share/man:/usr/local/share/man:/$HOME/prog/share/man"

#export DISPLAY=":0"

export XKB_DEFAULT_LAYOUT="fr"
export XDG_CACHE_HOME="$HOME/.cache"
export XDG_CONFIG_HOME="$HOME/.config"
export XDG_RUNTIME_DIR="$HOME/.config"
export XDG_SESSION_TYPE=wayland
#mkdir -p $XDG_RUNTIME_DIR
export GDK_BACKEND=wayland
#export WAYLAND_DISPLAY=wayland-0
#export XDG_CURRENT_DESKTOP=Unity
export XDG_CURRENT_DESKTOP=sway
export QT_QPA_PLATFORM=wayland
export BEMENU_BACKEND=wayland
export SDL_VIDEODRIVER=wayland
export CLUTTER_BACKEND=wayland
export QT_WAYLAND_DISABLE_WINDOWDECORATION=1
export WINIT_UNIX_BACKEND=wayland
export MOZ_ENABLE_WAYLAND=1
export MOZ_DBUS_REMOTE=1
#export JAVA_HOME="$HOME/jdk-12.0.1"
export _JAVA_AWT_WM_NONREPARENTING=1
export NO_AT_BRIDGE=1
export QT_ACCESSIBILITY=0

alias mirage="ssh inpt nc mirage 2222"
alias irc="ssh -t turing 'su irc -c \"tmux a\"'"
alias xmpp="ssh -t turing 'su poezio -c \"tmux a\"'"
alias fxmem="ps ax  -o rss,cmd |grep firefox |cut -f1 -d' ' | awk 'BEGIN{counter=0;}{counter+=\$1;}END {print counter \"kB\";}'"
#alias jbuild="rm -rf /tmp/e33 && mkdir -p /tmp/e33 && javac -d /tmp/e33 main/CalcView.java -g && java -cp /tmp/e33 main.CalcView"
alias rsynci="rsync -e \"ssh -J inpt\""

#export MOZCONFIG="/home/nightmared/dev/mozilla-central/.mozconfig2"
#export MOZ_ACCELERATED=1

alias vm7-sigma="virt-manager -c qemu+ssh://root@sigma/system"
alias vm7-omega="virt-manager -c qemu+ssh://root@omega/system"
alias fboxmnt="sudo mount.cifs -o guest,uid=1000,vers=1.0 //192.168.1.254/Disque\ dur $HOME/mnt/"

alias muslrust="docker run -v cargo-cache:/root/.cargo/registry -v $PWD:/volume --rm -it clux/muslrust cargo build"
#THIS MUST BE AT THE END OF THE FILE FOR SDKMAN TO WORK!!!
#export SDKMAN_DIR="/home/nightmared/dev/n7/gls/TPtest/sdkman"
#[[ -s "/home/nightmared/dev/n7/gls/TPtest/sdkman/bin/sdkman-init.sh" ]] && source "/home/nightmared/dev/n7/gls/TPtest/sdkman/bin/sdkman-init.sh"
alias discord="env -i DISPLAY=:0 XDG_RUNTIME_DIR=$XDG_RUNTIME_DIR flatpak run com.discordapp.Discord &"

export PATH="$HOME/.local/bin:$HOME/local/bin:$PATH"
#export PATH="/home/nightmared/.pyenv/bin:$PATH"
export GSETTINGS_SCHEMA_DIR="$HOME/local/share/glib-2.0/schemas"
#eval "$(pyenv init -)"
#eval "$(pyenv virtualenv-init -)"
