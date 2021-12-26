#! /usr/bin/env bash

case $1 in
	switch) sudo nixos-rebuild switch --flake '.#';;
	apply) sudo nixos-rebuild switch --flake '.#';;
	test) sudo nixos-rebuild dry-run --flake '.#';;
esac

