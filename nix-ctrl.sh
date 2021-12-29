#! /usr/bin/env bash

case $1 in 
	apply-sys)
		pushd ~/.GitHub/NixOS-Unstable/
		sudo nixos-rebuild switch -I nixos-config=./configuration.nix ;;
	apply-user)
		pushd ~/.GitHub/NixOS-Unstable/
		home-manager switch -f ./sys/users/homemanager.nix
		;;
	update-sys)
		sudo nix-channel --update ;;
	update-user)
		nix-channel --update ;;
esac
