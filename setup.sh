#!/bin/bash

cd `dirname $0`
SHELLDIR=$PWD

function error() {
	echo >&2 -e "\033[0;31m$*\033[0;39m"
}

function exec() {
	"$@"
	ret=$?
	if [ $ret -ne 0 ]; then
		error "[ERROR] $*"
		exit 1
	fi
}

function main() {
	if [ $# -lt 1 ]; then
		error "invalid argument"
		exit 1
	fi

	case "$1" in
	"download")
		exec download;;
	"build")
		exec build;;
	"install")
		exec install;;
	"uninstall")
		exec uninstall;;
	esac
}

function download() {
	:
}

function build() {
	:
}

function install() {
	:
}

function uninstall() {
	:
}

main $*
