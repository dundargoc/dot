set -gx EDITOR (which nvim)
set -gx VISUAL $EDITOR
set -gx SUDO_EDITOR $EDITOR

set -x fish_user_paths
# Path
fish_add_path ~/.cargo/bin
fish_add_path ~/.local/bin
fish_add_path ~/.luarocks/bin
fish_add_path ~/Library/Python/3.{8,9}/bin
fish_add_path /usr/local/opt/sqlite/bin
fish_add_path /usr/local/sbin
fish_add_path ~/.gem/ruby/2.6.0/bin
fish_add_path ~/.local/bin/pnpm
fish_add_path /bin
fish_add_path ~/.local/share/bob/nvim-bin
fish_add_path /var/lib/flatpak/exports/bin/

set -gx DENO_INSTALL "~/.deno"
fish_add_path ~/.deno/bin

# Fish
set fish_emoji_width 2
alias fish_greeting color-test

# Emacs
# set -l emacs_path /Applications/Emacs.app/Contents/MacOS
# set -Ux EMACS $emacs_path/Emacs
fish_add_path ~/.emacs.d/bin
# alias emacs $EMACS

# Go
set -x GOPATH ~/go
fish_add_path $GOPATH $GOPATH/bin


fish_add_path -m /etc/profiles/per-user/folke/bin /run/current-system/sw/bin
# Exports
set -x LESS -rF
set -x BAT_THEME Dracula
set -x COMPOSE_DOCKER_CLI_BUILD 1
set -x HOMEBREW_NO_AUTO_UPDATE 1
set -x DOTDROP_AUTOUPDATE no
set -x MANPAGER "nvim +Man!"
set -x MANROFFOPT -c
set -x OPENCV_LOG_LEVEL ERROR
#set -x MANPAGER "sh -c 'col -bx | bat -l man -p'" # use bat to format man pages
#set -x MANPAGER "most" # use bat to format man pages

# Dnf
abbr dnfi 'sudo dnf install'
abbr dnfs 'sudo dnf search'
abbr dnfr 'sudo dnf remove'
abbr dnfu 'sudo dnf upgrade --refresh'

# Tmux
abbr t tmux
abbr tc 'tmux attach'
abbr ta 'tmux attach -t'
abbr tad 'tmux attach -d -t'
abbr ts 'tmux new -s'
abbr tl 'tmux ls'
abbr tk 'tmux kill-session -t'
abbr mux tmuxinator

# Files & Directories
abbr mv "mv -iv"
abbr cp "cp -riv"
abbr mkdir "mkdir -vp"
alias ls="exa --color=always --icons --group-directories-first"
alias la 'exa --color=always --icons --group-directories-first --all'
alias ll 'exa --color=always --icons --group-directories-first --all --long'
abbr l ll
abbr ncdu "ncdu --color dark"

# Editor
abbr vim nvim
abbr vi nvim
abbr v nvim
abbr vd "VIM=~/projects/neovim nvim --luamod-dev"
abbr sv sudoedit
abbr vudo sudoedit
alias lazyvim "NVIM_APPNAME=lazyvim nvim"
abbr lv lazyvim

# Dev
abbr git hub
abbr g hub
abbr lg lazygit
abbr gl 'hub l --color | devmoji --log --color | less -rXF'
abbr st "hub st"
abbr push "hub push"
abbr pull "hub pull"
alias tn "npx --no-install ts-node --transpile-only"
abbr tt "tn src/tt.ts"

# Other
abbr df "grc /bin/df -h"
abbr ntop "ultra --monitor"
abbr ytop btm
abbr gotop btm
abbr fda "fd -IH"
abbr rga "rg -uu"
abbr grep rg
abbr suod sudo
abbr helpme "bat ~/HELP.md"
abbr weather "curl -s wttr.in/Ghent | grep -v Follow"
abbr show-cursor "tput cnorm"
abbr hide-cursor "tput civis"
abbr aria2c-daemon "aria2c -D"
