source $(dirname "$0")/colors.zsh
source $(dirname "$0")/icons.zsh
#source $(dirname "$0")/config.zsh

rd="%B%F{$((RANDOM % 100))}"

case $colorscheme in
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
	rose-pine) rose-pine ;;
	rose-pine-light) rose-pine-light ;;
esac

autoload -Uz vcs_info
zstyle ':vcs_info:*' stagedstr "${neon[4]} $i1 %f"
zstyle ':vcs_info:*' unstagedstr "%B%F{magenta} $i2 %f"
zstyle ':vcs_info:*' enable git
zstyle ':vcs_info:*' check-for-changes true
zstyle ':vcs_info:*' formats '%b%c%u'
zstyle ':vcs_info:*' actionformats '#%b|%a%c%u '
precmd () { vcs_info }

prompt_a()
{
top_line() {
    line=$(tput cols)
    for x in $(seq 1 $line ); do
        qtd="$qtd"
        line="$qtd$l1"
        echo -ne "$line\c"
    done
}

git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
   		echo "%f %B%F{$yellow}$g9%f%B%F{black} $vcs_info_msg_0_"
  	fi	
}


welcome="%B%F{$magenta}Hellow%f"
dir_info='%B%K{$black} %1~ %k'
user_info="$welcome %n $dir_info  %B%F{$blue}`date +%A`%f, \
%B%F{$magenta}`date +%d`%f %B%F{$blue}`date +%B`%f \
%B%F{$magenta}`date +%Y`%f %B%F{$blue}%B%K{$black} `date +%H:%M` %k%f"


PROMPT='%B%F{$white}$(top_line)'
PROMPT+='$user_info'
PROMPT+='$(git_prompt_info)
%B%F{$magenta}$a1 %f'
}

prompt_b() 
{
git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
    	echo "%B%F{$black}%B%K{$red}$s9 %B%F{$green}$g2 %B%F{$black}$vcs_info_msg_0_%f %B%F{$red}%B%K{$green}$s9%f"
    else
    	echo "%B%F{$black}%B%K{$green}$s9"
  	fi
}

git_info='$(git_prompt_info)'
user_info='%B%F{$black}$s10%B%K{$black}%B%F{$white}%n%B%F{$magenta}@%B%F{$blue}%m%f'
dir_info='${%B%K{$black}%B%K{$green}%B%F{black} %~ %k%B%F{$green}$s9%f'
	
PROMPT="$user_info$git_info$dir_info "
}

prompt_c()
{

git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
    	echo " %B%F{$magenta}$s10%B%F{$yellow}%B%K{$magenta} $g1 %f $vcs_info_msg_0_"
    else
    	echo "%B%F{$magenta}$s11"
  	fi
}
dir_info='%B%F{$black}$s10%B%F{$green}%B%K{$black}%2~%k%B%F{$black}$s9$(git_prompt_info)'
user_info='%B%F{$black}$s10%B%F{$green}%B%K{$black}$a2%k%B%F{$black}$s9 '

PROMPT="$dir_info $user_info"
}

prompt_d()
{

wellcome()
{
time=`date | cut -d" " -f5 | cut -d: -f1`
	if (("$time" >= "06")) && (("$time" <= "12"));then
		echo -e "%B%F{$black}${s10}%B%F{$black}%B%K{$green}Good morning%k%B%F{$black}%B%K{$magenta}$s9%B%F{$white} %n%B%F{$magenta}%k$s9%f"
	elif (("$time" > "12")) && (("$time" < "18"));then
		echo -e "%B%F{$black}${s10}%B%F{$black}%B%K{$green}Good afternoon%k%B%F{$black}%B%K{$magenta}$s9%B%F{$white} %n%B%F{$magenta}%k$s9%f"
	else
		echo -e "%B%F{$black}${s10}%B%F{$red}%B%K{$black}%B%F{$green}Good night%k%B%F{$black}%B%K{$magenta}$s9%B%F{$white} %n%B%F{$magenta}%k$s9%f"
	fi
}

git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
   		echo "%B%F{$white}(%B%F{$green}$g4 %B%F{$white}$vcs_info_msg_0_)"
	fi
}

dir_info=' %B%F{$magenta}inside of%f: %B%F{$black}$s10%B%F{white}%B%K{$black}$(git_prompt_info) %B%F{$white}%2~ %k%B%F{$black}$s9%f '

PROMPT="$(wellcome)"
PROMPT+="$dir_info"
}

prompt_e()
{

git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
   		echo "( %B%F{$yellow}$g3%f $vcs_info_msg_0_)"
	fi
}

user_info='%B%F{$magenta}%n %B%F{$green}$m2%f'
dir_info='$(git_prompt_info)(%B%F{$magenta} %1~%f ) 
%B%F{$green}$a2 %f'

PROMPT="$user_info"
PROMPT+="$dir_info "
}

prompt_f()
{

git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
   		echo "%f%B%F{$black} $g7  $vcs_info_msg_0_ %k "
	fi
}

user_info='$u1 %B%F{magenta}$l2%B%F{$green}%n%B%F{magenta}@%B%F{$blue}%m%f'
status_info='%(?:%B%F{$green}➜ :%B%F{$red}➜ %f)'
dir_info='$(git_prompt_info)%B%F{$green}%3~%B%F{magenta} $l2%f $f2 '

PROMPT="$user_info $status_info"
RPROMPT="$dir_info"
}

prompt_g()
{

git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
   		echo "%B%F{$yellow}git(%B%F{$green}$vcs_info_msg_0_%B%F{$yellow})%f"
	fi
}

user_info='%B%F{magenta}@%f%n'
dir_info='%B%F{green}$a1 %B%F{magenta}%1~ $(git_prompt_info) %f$a2 '

PROMPT="$user_info $dir_info"
}

prompt_h()
{
git_prompt_info() {
	if $(git rev-parse --is-inside-work-tree &>/dev/null); then
   		echo "%B%K{$blue} %k%B%K{yellow} $g3  $vcs_info_msg_0_%B%F{$yellow}%f %k"
	fi
}

user_info='%B%F{$black}$s20%B%F{$white}%B%K{$black} %n %k%B%F{$black}$s19 '
dir_info='%B%F{$black}$s20%B%F{$white}%B%K{$black} %3~ %k%F$(git_prompt_info)'

PROMPT="$user_info"
PROMPT+="$dir_info "
}

prompt_i()
{

git_prompt_info(){
    if git rev-parse --git-dir > /dev/null 2>&1; then
        echo "%B%F{$green}$s10%f%K{$green}%B%F{$black} $vcs_info_msg_0_ %k%F{$green}$s9%f─"
    fi
}

PROMPT='╭%K{$cyan} %F{$black}$f2  %k%f─'
PROMPT+='$(git_prompt_info)%F{$black}$s10%K{$black}  %f%B%F{$cyan}%1~  %k%F{$black}$s9%f
╰─%B%F{$magenta}❭ ' # Current directory
}

prompt_j() {
user_name="$USER"
user_count=$(( ${#user_name} + 1 ))
line_name=$(seq -s "━" $user_count | tr -d "[:digit:]")
user_line="%B%F{$green}$line_name"

sep=$(seq -s "━" 2 | tr -d "[:digit:]")
sep_line="$B%F{$black}$sep"

host_name="$HOST"
host_count=$(( ${#host_name} + 1 ))
line_host=$(seq -s "━" $host_count | tr -d "[:digit:]")
host_line="%B%F{$blue}$line_host%f"

user="%B%F{$green}%n%B%F{$black}@%B%F{$blue}%m"

PROMPT="$user_line$sep_line$host_line
$user%f
%B%F{$white}$f3  %B%F{$magenta}%1~%f $a1 "
}

prompt_k() {

time=`date '+%A, %d %B %Y %H:%M'`
git_prompt_info(){
    if git rev-parse --git-dir > /dev/null 2>&1; then
        echo "%B%F{$green}$s10%f%K{$green}%B%F{$black} $vcs_info_msg_0_ %k%F{$green}$s9%f─"
    fi
}

PROMPT="%B%F{$magenta}$s10%B%K{$magenta}%B%F{$black} $time %B%F{$magenta}%k$s9%f $(git_prompt_info)
"
}

prompt_l()
{

info_arq()
{
folder_num=$(ls -la | grep '^d' | wc -l)
arq_num=$(ls -la | grep '^-' | wc -l)

echo "%B%K{$black}%B%F{$white} folders "%B%K{$white}%B%F{$black} $folder_num%f %k\
"%B%K{$black}%B%F{$white} files" %B%K{$white}%B%F{$black} $arq_num %k
}

dir_info='%B%K{$black}%B%F{$white} %i %k %B%F{$green}$f3 %f[%B%F{$green}%2~%f]'
user_info='%B%F{$green}%n%f@%B%F{$green}%m%f:'

PROMPT="$dir_info $user_info "
RPROMPT='$(info_arq)'
}
