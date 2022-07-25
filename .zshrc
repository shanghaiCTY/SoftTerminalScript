# раскомментируйте, если вам нужна норминетта
export USER=shanghaiCTY # or your name
export MAIL=mymail@mail.com #your email

# if you have to work with C
alias gccc="gcc -Wall -Wextra -Werror"
# color folders in terminal
alias ls="ls --color=always"
# easy way to get Desktop from anywhere
alias desktop="cd ~/Desktop"
# remove directories with force
alias rmd="rm -rf"
# cache folder in mac os
alias cache="~/Library/Caches/*"
# this command find your terminal file and after closing it
# will refresh terminal to make updates work properly
alias rc="vim ~/.zshrc && source ~/.zshrc"
#change .zshrc to .bashrc if your terminal is using bash

# check current gitlab profile in terminal
function gitH() {
	ssh -T git@github.com
}

#check current github profile in terminal
function gitL() {
	ssh -T git@gitlab.com
}

# get to particular folder and open there VSC
# Example code_in shanghaiCTY
# it will scout for directory shanghaiCTY at desktop
function code_in() {
	cd ~/Desktop/"$1"
	code .
}

# creates new git environment
# modify first line to change where to store new project
function new_project() {
	cd ~/Desktop
	mkdir "$1"
	cd $1
	git init
	touch README.md
	touch .gitignore
	code .
}

# easy way to rebuild and recompile modified C file
function comp() {
	gcc -Wall -Wextra -Werror "$1.c" -o $1
	./$1
}
# or variant with alias wrote b4
function cmpl() {
	gccc "$1.c" -o $1
	./$1
}

# clean mac cache
function clean_cache() {
	rmd cache
}
