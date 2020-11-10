PS1="\[\033[1;33;1;32m\]:\[\033[1;31m\]\w$ \[\033[0m\]\[\033[0m\]"

cl () {
	if [ -z "$1" ]
	then
		dir="."
	else
		dir="$1"
	fi
	cd $dir
	ls
}

# Change the wallpapers
_wp=0
wp-toggle () {
	if [ $_wp = 0 ]
	then
		termux-wallpaper -f ~/storage/shared/Pictures/Yandex/mylove.jpg
		_wp=1
	else
		termux-wallpaper -f ~/storage/shared/Pictures/Yandex/abstract.jpg
		_wp=0
	fi
}

alias nn='nano -iklFT 4'
alias cd='cl'
alias tosrc='cd ~/storage/shared/source'
