# export DISPLAY=:0
export PATH="/home/ervin/.local/bin:/home/ervin/.local/share/gem/ruby/3.0.0/bin:$PATH"

# XDG Base Directory specification
export XDG_STATE_HOME="$HOME"/.local/state
export XDG_CONFIG_HOME="$HOME"/.config
export XDG_DATA_HOME=/home/ervin/.local/share
export XDG_CACHE_HOME=/home/ervin/.cache
export CARGO_HOME="$XDG_DATA_HOME"/cargo
export DVDCSS_CACHE="$XDG_DATA_HOME"/dvdcss
export GNUPGHOME="$XDG_DATA_HOME"/gnupg
export GOPATH="$XDG_DATA_HOME"/go
export GTK2_RC_FILES="$XDG_CONFIG_HOME"/gtk-2.0/gtkrc
export HISTFILE="$XDG_STATE_HOME"/zsh/history
export MYSQL_HISTFILE="$XDG_DATA_HOME"/mysql_history
export OCTAVE_HISTFILE="$XDG_CACHE_HOME"/octave-hsts
export OCTAVE_SITE_INITFILE="$XDG_CONFIG_HOME"/octave/octaverc
export PYTHONSTARTUP="$XDG_CONFIG_HOME"/pythonrc
export RUSTUP_HOME="$XDG_DATA_HOME"/rustup
export WGETRC="$XDG_CONFIG_HOME"/wgetrc
export WINEPREFIX=/mnt/win/wine
export XINITRC="$XDG_CONFIG_HOME"/X11/xinitrc
export _JAVA_OPTIONS=-Djava.util.prefs.userRoot="$XDG_CONFIG_HOME"/java

# nvidia, fuck you
export __NV_PRIME_RENDER_OFFLOAD=1
export __GLX_VENDOR_LIBRARY_NAME="nvidia"
export __VK_LAYER_NV_optimus="NVIDIA_only"
export GBM_BACKEND=nvidia-drm

# VARIABLES
export TERMINAL=alacritty
export EDITOR=nvim
export BEEP=/usr/share/sounds/gnome/default/alerts/sonar.ogg
export LF_ICONS="tw=:st=:ow=:dt=:di=:fi=:ln=:or=:ex=:*.c=:*.cc=:*.clj=:*.coffee=:*.cpp=:*.css=:*.d=:*.dart=:*.erl=:*.exs=:*.fs=:*.go=:*.h=:*.hh=:*.hpp=:*.hs=:*.html=:*.java=:*.jl=:*.js=:*.json=:*.lua=:*.md=:*.php=:*.pl=:*.pro=:*.py=:*.rb=:*.rs=:*.scala=:*.ts=:*.vim=:*.cmd=:*.ps1=:*.sh=:*.bash=:*.zsh=:*.fish=:*.tar=:*.tgz=:*.arc=:*.arj=:*.taz=:*.lha=:*.lz4=:*.lzh=:*.lzma=:*.tlz=:*.txz=:*.tzo=:*.t7z=:*.zip=:*.z=:*.dz=:*.gz=:*.lrz=:*.lz=:*.lzo=:*.xz=:*.zst=:*.tzst=:*.bz2=:*.bz=:*.tbz=:*.tbz2=:*.tz=:*.deb=:*.rpm=:*.jar=:*.war=:*.ear=:*.sar=:*.rar=:*.alz=:*.ace=:*.zoo=:*.cpio=:*.7z=:*.rz=:*.cab=:*.wim=:*.swm=:*.dwm=:*.esd=:*.jpg=:*.jpeg=:*.mjpg=:*.mjpeg=:*.gif=:*.bmp=:*.pbm=:*.pgm=:*.ppm=:*.tga=:*.xbm=:*.xpm=:*.tif=:*.tiff=:*.png=:*.svg=:*.svgz=:*.mng=:*.pcx=:*.mov=:*.mpg=:*.mpeg=:*.m2v=:*.mkv=:*.webm=:*.ogm=:*.mp4=:*.m4v=:*.mp4v=:*.vob=:*.qt=:*.nuv=:*.wmv=:*.asf=:*.rm=:*.rmvb=:*.flc=:*.avi=:*.fli=:*.flv=:*.gl=:*.dl=:*.xcf=:*.xwd=:*.yuv=:*.cgm=:*.emf=:*.ogv=:*.ogx=:*.aac=:*.au=:*.flac=:*.m4a=:*.mid=:*.midi=:*.mka=:*.mp3=:*.mpc=:*.ogg=:*.ra=:*.wav=:*.oga=:*.opus=:*.spx=:*.xspf=:*.pdf=:*.nix=:"
export FZF_DEFAULT_OPTS='--color=bg+:#302D41,bg:#1E1E2E,spinner:#F8BD96,hl:#F28FAD --color=fg:#D9E0EE,header:#F28FAD,info:#DDB6F2,pointer:#F8BD96 --color=marker:#F8BD96,fg+:#F2CDCD,prompt:#DDB6F2,hl+:#F28FAD'
export PAGER='less'
export MANPAGER='nvim +Man!'
export BROWSER='firefox'

# Aliases
alias SS="sudo systemctl"
alias alttab='alttab -w 1 -d 2 -i 60x60 -t 60x60 -bg "#1e1e2e" -fg "#d9e0ee" -frame "#ddb6f2" -bw 5 -inact "#1e1d2d" -bc "#000000" -bw 0'
alias b="$HOME/.local/bin/"
alias beep='paplay $BEEP'
alias birthday="birthday -f ~/.local/share/birthdays -W 7"
alias c="$HOME/.config"
alias cat="bat"
alias cl="clear; sleep 0.5; la"
alias copy="xclip -selection clipboard"
alias cp="cp -v"
alias d="$HOME/www/src/mine/dots-Lenovo"
alias df="df -h -x tmpfs -x devtmpfs -x squashfs"
alias diff='diff --color=auto'
alias egrep='egrep --color=auto'
alias feh="feh -d --edit --scale-down --auto-zoom"
alias fgrep='fgrep --color=auto'
alias gcl='git clone'
alias gp="git add .; git commit; git push"
alias grep='grep --color=auto'
alias ip='ip --color=auto'
alias la="ls"
alias lf='lfub'
alias ll="ls -ghl"
alias ls='exa --color=auto --icons -aH'
alias md="mdless"
alias mysql-workbench='mysql-workbench --configdir="$XDG_DATA_HOME/mysql/workbench"'
alias ncdu="ncdu --color off"
alias neo-ru="neo-matrix --color=red --charset=cyrillic -m 'IN SOVIET RUSSIA, COMPUTER PROGRAMS YOU'"
alias neo="neo-matrix -D"
alias nf="neofetch"
alias nvidia-settings="nvidia-settings --config="$XDG_CONFIG_HOME"/nvidia/settings"
alias o="xdg-open"
alias oms="sudo optimus-manager --status"
alias p="sudo pacman"
alias pacgraph='pacgraph -b "#1e1e2e" -l "#81a1c1" -t "#c9cbff" -d "#f38ba8" -n --disable-palette'
alias q="gnome-session-quit"
alias rm="rm -rf"
alias sa="adb forward tcp:8022 tcp:8022 && adb forward tcp:8080 tcp:8080 && ssh localhost -p 8022 -i ~/.ssh/id_rsa_android"
alias sudo='sudo '
alias sway="sway --unsupported-gpu"
alias swi="sudo optimus-manager --sw integrated"
alias swn="sudo optimus-manager --sw nvidia"
alias systeroid-tui="systeroid-tui --bg-color 1e1e2e"
alias tty-clock="tty-clock -c -C 7 -f '%a, %d %b'"
alias u='sudo pacman -Syu'
alias vim="nvim"
alias wget='wget --hsts-file="$XDG_CACHE_HOME/wget-hsts"'
alias xbindkeys="xbindkeys -f "$XDG_CONFIG_HOME"/xbindkeys/config"

# checking for tty or not
if [[ "$(tty | sed -e 's:/dev/::;s/[0-9]//')" == "tty" ]]
then
	alias ls="exa -aH"
  echo -en "\e[?25h"
else
	# xhost si:localuser:root > /dev/null
fi
