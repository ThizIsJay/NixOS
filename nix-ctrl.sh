#! /usr/bin/env bash

case $1 in
	switch) sudo nixos-rebuild switch -I nixos-config=./configuration.nix --flake '.#';;
	apply) sudo nixos-rebuild switch -I nixos-config=./configuration.nix --flake '.#';;
	test) sudo nixos-rebuild dry-run --flake '.#';;
esac

