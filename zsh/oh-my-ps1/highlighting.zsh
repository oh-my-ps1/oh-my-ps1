source $(dirname "$0")/colors.zsh
source $(dirname "$0")/themes.zsh

case $colorsheme in
  dracula) dracula ;;
  gruvbox) gruvbox ;;
  gruvbox-light) gruvbox-light ;;
  nord) nord ;;
  catppuccin-frappe) catppuccin-frappe ;;
  catppuccin-latte) catppuccin-latte ;;
  catppuccin-Macchiato) catppuccin-macchiato ;;
  catppuccin-mocha) catppuccin-mocha ;;
  solarized) solarized ;;
  tokyo-night) tokyo-night ;;
  onedark) onedark ;;
  monokai) monokai ;;
  everforest) everforest ;;
esac

ZSH_HIGHLIGHT_HIGHLIGHTERS=(main cursor)
typeset -gA ZSH_HIGHLIGHT_STYLES

ZSH_HIGHLIGHT_STYLES[comment]=fg=$black
ZSH_HIGHLIGHT_STYLES[alias]=fg=$green
ZSH_HIGHLIGHT_STYLES[suffix-alias]=fg=$green
ZSH_HIGHLIGHT_STYLES[global-alias]=fg=$green
ZSH_HIGHLIGHT_STYLES[function]=fg=$green
ZSH_HIGHLIGHT_STYLES[command]=fg=$green
ZSH_HIGHLIGHT_STYLES[precommand]=fg=$green,italic
ZSH_HIGHLIGHT_STYLES[autodirectory]=fg=$yellow,italic
ZSH_HIGHLIGHT_STYLES[single-hyphen-option]=fg=$yellow
ZSH_HIGHLIGHT_STYLES[double-hyphen-option]=fg=$yellow
ZSH_HIGHLIGHT_STYLES[back-quoted-argument]=fg=$blue
ZSH_HIGHLIGHT_STYLES[builtin]=fg=$green
ZSH_HIGHLIGHT_STYLES[reserved-word]=fg=$green
ZSH_HIGHLIGHT_STYLES[hashed-command]=fg=$green
ZSH_HIGHLIGHT_STYLES[commandseparator]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter]=fg=$white
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-unquoted]=fg=$white
ZSH_HIGHLIGHT_STYLES[process-substitution-delimiter]=fg=$white
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-delimiter]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[back-double-quoted-argument]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[back-dollar-quoted-argument]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[command-substitution-quoted]=fg=$yellow
ZSH_HIGHLIGHT_STYLES[command-substitution-delimiter-quoted]=fg=$yellow
ZSH_HIGHLIGHT_STYLES[single-quoted-argument]=fg=$yellow
ZSH_HIGHLIGHT_STYLES[single-quoted-argument-unclosed]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[double-quoted-argument]=fg=$yellow
ZSH_HIGHLIGHT_STYLES[double-quoted-argument-unclosed]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[rc-quote]=fg=$yellow
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument]=fg=$white
ZSH_HIGHLIGHT_STYLES[dollar-quoted-argument-unclosed]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[dollar-double-quoted-argument]=fg=$white
ZSH_HIGHLIGHT_STYLES[assign]=fg=$white
ZSH_HIGHLIGHT_STYLES[named-fd]=fg=$white
ZSH_HIGHLIGHT_STYLES[numeric-fd]=fg=$white
ZSH_HIGHLIGHT_STYLES[unknown-token]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[path]=fg=$white,underline
ZSH_HIGHLIGHT_STYLES[path_pathseparator]=fg=$magenta,underline
ZSH_HIGHLIGHT_STYLES[path_prefix]=fg=$white,underline
ZSH_HIGHLIGHT_STYLES[path_prefix_pathseparator]=fg=$magenta,underline
ZSH_HIGHLIGHT_STYLES[globbing]=fg=$white
ZSH_HIGHLIGHT_STYLES[history-expansion]=fg=$blue
ZSH_HIGHLIGHT_STYLES[back-quoted-argument-unclosed]=fg=$magenta
ZSH_HIGHLIGHT_STYLES[redirection]=fg=$white
ZSH_HIGHLIGHT_STYLES[arg0]=fg=$white
ZSH_HIGHLIGHT_STYLES[default]=fg=$white
ZSH_HIGHLIGHT_STYLES[cursor]=fg=$white