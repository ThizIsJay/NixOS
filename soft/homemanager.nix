{ config, pkgs, ... }:
let home-manager = builtins.fetchTarball "https://github.com/nix-community/home-manager/archive/master.tar.gz";
in
{
  imports = [
    (import "${home-manager}/nixos")
  ];
  home-manager.users.thisjay = {
    programs = {
# Lsd {{{
   lsd = {
     enable = true;
     enableAliases = false;
   };
#}}}
# Home Manager {{{
	home-manager.enable = true;
#}}}
# Git {{{
	git = {
     enable = true;
     userName  = "Jay Verrijt";
     userEmail = "acc.jverrijt@hotmail.com";
     extraConfig = {
       core.editor = "nvim";
       github.username = "ThizIsJay";
     };
    };
#}}}
# Neovim {{{
	neovim = {
	  enable = true;
	  vimAlias = true;
	  viAlias = true;
	  plugins = [
	    pkgs.vimPlugins.vim-nix
		pkgs.vimPlugins.vim-surround
		pkgs.vimPlugins.vim-commentary
		pkgs.vimPlugins.vim-devicons
		pkgs.vimPlugins.vim-emoji
		pkgs.vimPlugins.nerdtree
		pkgs.vimPlugins.vim-css-color
		pkgs.vimPlugins.emmet-vim
		pkgs.vimPlugins.python-syntax
		pkgs.vimPlugins.goyo-vim
		pkgs.vimPlugins.vimwiki
		pkgs.vimPlugins.nord-vim
	  ];
	  extraConfig = ''
	    set nocompatible
		filetype plugin indent on
		silent
		syntax on
		set number relativenumber
		set path+=**
		set wildmode=longest,list,full
		set shell=bash
		set encoding=UTF-8
		set cursorline
		set showmatch
		set linebreak
		set ignorecase
		set smartcase
		set clipboard+=unnamedplus
		set tabstop=4
		set noruler
		set shiftwidth=4
		set foldenable
		set noshowcmd
		set foldmethod=marker
		set foldmarker={{{,}}}
		set softtabstop=4
		set spelllang=nl,en_us
		set shortmess=a
		set shortmess+=F
		set splitright
		set cmdheight=2
		set laststatus=0
		set fillchars+=eob:\
		autocmd VimEnter * :silent exec "!kill -s SIGWINCH $PPID"
		function! StartUp()
		    if 0 == argc()
				NERDTree ~/
			endif
		endfunction
		autocmd VimEnter * call StartUp()
		autocmd VimEnter * wincmd p
		let NERDTreeShowHidden=1
        colorscheme nord
	  '';
	};	
# }}}
# Zsh {{{
  zsh = {
    enable = true;
    dotDir = ".config/zsh";
    enableAutosuggestions = true;
    enableCompletion = true;
    shellAliases = {
      ls = "lsd -lah";
      sudo = "sudo ";
    };
    history.size = 10000;
    zplug = {
      enable = true;
      plugins = [
       { name = "zsh-users/zsh-autosuggestions"; }
       { name = "zsh-users/zsh-syntax-highlighting"; }
    ];
    };
    oh-my-zsh = {
      enable = true;
      theme = "minimal";
    };
    initExtra = ''
      bindkey -v
      export KEYTIMEOUT=1
      bindkey -M menuselect 'h' vi-backward-char
      bindkey -M menuselect 'k' vi-up-line-or-history
      bindkey -M menuselect 'l' vi-forward-char
      bindkey -M menuselect 'j' vi-down-line-or-history
      bindkey -v '^?' backward-delete-char
      EDITOR=nvim
      MANPAGER="nvim +Man!"
      WWWCLIENT="qutebrowser"
      TERM="alacritty"
      TERMINAL="$TERM"
      autoload -U promptinit; promptinit

      echo "$(fortune)"
      function nix ()
      {
      case $1 in
        install) nix-env -iA;;
        remove) nix-env -uninstall;;
        rebuild)sudo  nixos-rebuild switch;;
        test) sudo nixos-rebuild test;;
      esac
      }
      function nt()
      {
      case $1 in
        mount) sudo mount -o rw -t ntfs "$2" ~/.local/mnt;;
        umount) sudo umount -l $2;;
        emount) sudo mount -o rw -t ntfs "$2" "$3";;
      esac
      }
      function gt()
      {
        case $1 in
          add) git add * ;;
          ls) git status ;;
          status) git status ;;
          restore) git restore;;
          clone) git clone "$2";;
          discard) git discard;;
          rm) git discard $2;;
          pull) git pull;;
          up) git commit -m "$2"; git push;
        esac
      }
      function ex()
      {
          if [ -f $1 ]; then
              case $1 in
                   *.tar.bz2)   tar xjf $1   ;;
                   *.tar.gz)    tar xzf $1   ;;
               *.tar.xz)    tar xJf $1   ;;
               *.rar)       unrar x $1     ;;
               *.gz)        gunzip $1    ;;
               *.tar)       tar xf $1    ;;
               *.tbz2)      tar xjf $1   ;;
               *.tgz)       tar xzf $1   ;;
               *.zip)       unzip $1     ;;
               *)           echo "'$1' kan niet uitgepakt worden door ex" ;;
               esac
           else
               echo "'$1' is geen goed bestand"
        fi
      }
    '';

  }; 
 #}}}
  };
 };
}
