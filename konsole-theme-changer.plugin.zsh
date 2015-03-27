#!/usr/bin/env zsh

THEME_ONE="Solarized"
THEME_TWO="SolarizedLight"
CHANGE_THEME_KEY="^[[24~"

_THEME=0;

function change_theme(){
	if [[ $_THEME == 0 ]]; then
		_THEME=1
		konsoleprofile colors=$THEME_TWO
	else
		_THEME=0
		konsoleprofile colors=$THEME_ONE
	fi
}

zle -N change_theme

bindkey $CHANGE_THEME_KEY change_theme