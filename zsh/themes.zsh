#!/usr/bin/env zsh

# decorative symbols
local s1=""
local s2=""
local s3=""
local s4=""
local s5=""
local s6=""
local s7=""
local s8=""
local s9=""
local s10=""
local s11=""
local s12=""
local s13=""
local s14=""
local s15=""
local s16=""
local s17=""
local s18=""
local s19=""
local s20=""
local s21=""
local s22=""
local s23=""
local s24=""

# github symbols
local g1=""
local g2=""
local g3=""
local g4=""
local g5=""
local g6=""
local g7=""
local g8=""

# Arrows
local a1=""

# forefround colors
declare -a ansi=(
	# bridges
	%B%F{#303030} # 1
	%B%F{#F5f5f5} # 2
	%B%F{#d62839} # 3
	%B%F{#0466c8} # 4
	%B%F{#00FFAB} # 5
	%B%F{#FF6D28} # 6
	%B%F{#f72585} # 7
	%B%F{#4D77FF} # 8
	# pastel
	%B%F{#354259} # 9
	%B%F{#FFE6E6} # 10
	%B%F{#FF8787} # 11
	%B%F{#A0C3D2} # 12
	%B%F{#B6E2A1} # 13
	%B%F{#F1F7B5} # 14
	%B%F{#FF8DC7} # 15
	%B%F{#54BAB9} # 16
	# Neon
	%B%F{#000000} # 17
	%B%F{#ffffff} # 18
	%B%F{#D61C4E} # 19
	%B%F{#0096FF} # 20
	%B%F{#00FFAB} # 21
	%B%F{#F7EC09} # 22
	%B%F{#C70A80} # 23
	%B%F{#37E2D5} # 24


)

declare -a back=(
	# bridge
	%B%K{#303030} # 1
	%B%K{#f5f5f5} # 2
	%B%K{#d62839} # 3
	%B%K{#0466c8} # 4
	%B%K{#00FFAB} # 5
	%B%K{#FF6D28} # 6
	%B%K{#f72585} # 7
	%B%K{#4D77FF} # 8
	# pastel
	%B%K{#354259} # 9
	%B%K{#FFE6E6} # 10
	%B%K{#FF8787} # 11
	%B%K{#A0C3D2} # 12
	%B%K{#B6E2A1} # 13
	%B%K{#F1F7B5} # 14
	%B%K{#FF8DC7} # 15
	%B%K{#54BAB9} # 16
	# Neon
	%B%K{#000000} # 17
	%B%K{#ffffff} # 18
	%B%K{#D61C4E} # 19
	%B%K{#0096FF} # 20
	%B%K{#00FFAB} # 21
	%B%K{#F7EC09} # 22
	%B%K{#C70A80} # 23
	%B%K{#37E2D5} # 24
)


function prompt_a() {
	# Git support
	git_prompt_info() {
  		if $(git rev-parse --is-inside-work-tree &>/dev/null); then
    		echo "${ansi[1]}${back[8]}$s9 ${ansi[6]}$g2 ${ansi[1]}Master%f ${ansi[8]}${back[5]}$s9%f"
    	else
    		echo "${ansi[1]}${back[5]}$s9"
  		fi
}

	git_info='$(git_prompt_info)'
	user_info='${ansi[1]}$s10${back[1]}${ansi[2]}%n${ansi[7]}@${ansi[4]}%m%f'
	dir_info='${ansi[1]}${back[5]} %~ %k${ansi[5]}$s9%f'
	
	PS1="$user_info$git_info$dir_info "
}

function prompt_b() {

	git_prompt_info() {
  		if $(git rev-parse --is-inside-work-tree &>/dev/null); then
    		echo " ${back[6]} ${ansi[7]}$g7 ${ansi[1]}Main ${back[5]}${ansi[6]}$s17"
  		fi
	}

	user_info='${ansi[2]}$s18${ansi[1]}${back[2]} %n %k%f'
	dir_info=' ${back[5]} ${ansi[1]}%1~ %k${ansi[5]}$s17%f'
	git_info='$(git_prompt_info)'
	date_info='$s18${back[2]}  ${ansi[1]}%T  %k'

	PROMPT="$user_info$git_info$dir_info${ansi[6]} $a1%f "
	RPROMPT="$date_info"
}

function prompt_c() {
	user_name="$USER"
	user_count=$(( ${#user_name} + 1 ))
	line_name=$(seq -s "━" $user_count | tr -d "[:digit:]")
	user_line="%B%F{$green}$line_name"

	sep=$(seq -s "━" 2 | tr -d "[:digit:]")
	sep_line="%B%F{$red}$sep"

	host_name="$HOST"
	host_count=$(( ${#host_name} + 1 ))
	line_host=$(seq -s "━" $host_count | tr -d "[:digit:]")
	host_line="${ansi[4]}$line_host%f"

	user="${ansi[5]}%n${ansi[1]}@${ansi[4]}%m"

PROMPT="$user_line$sep_line$host_line
$user%f
 ${ansi[6]}%1~%f $a1 "

}

function prompt_d() {
	user_info='${back[15]} ${ansi[9]}%n %k${ansi[15]}${back[9]}$s1%f${back[9]}@${ansi[13]}$s4${back[13]}%f${ansi[9]}%m ${ansi[1]}$s15%k${ansi[13]}$s13'
	dir_info='${ansi[15]}%2~'

	PROMPT="$user_info "
	RPROMPT="$dir_info"
}

function prompt_e() {

	git_prompt_info() {
  		if $(git rev-parse --is-inside-work-tree &>/dev/null); then
    		echo "%f| ${ansi[21]}$g2%f main"
  		fi
	}


	line() {
    	Line=$(tput cols)
    for x in $(seq 1 $Line); do
        qtd="$qtd"
        line="$qtd-"
        printf '%s' $line
    done
}
	

	welcome="${ansi[15]}Hellow%f"
	dir_info='${ansi[6]} %f %3~'
	user_info='$welcome %n | ${ansi[16]}`date +%A`%f, ${ansi[19]}`date +%d`%f ${ansi[16]}`date +%B`%f ${ansi[19]}`date +%Y`%f ${ansi[9]}${back[10]} `date +%H:%M` %k%f$(git_prompt_info)'

	PROMPT="$(line)
$user_info
$dir_info ${ansi[23]}$a1 %f"
}