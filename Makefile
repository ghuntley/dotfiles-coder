.DEFAULT_GOAL := install

install:
	stow editorconfig -t ~
	stow git -t ~
	stow nix -t ~
	stow nixpkgs -t ~
	stow ssh -t ~
	stow tmux -t ~
	stow vim -t ~
	nix-env -i \
		bat \
		diff-so-fancy \
		curl \
		direnv \
		git \
		git-lfs \
		htop \
		jq \
		lazygit \
		neovim \
		tmux

publish:
	git diff
	echo ""
	printf "%s " "Ensure no secrets will be commited. Press enter to continue"
	read ans
	git commit -am "`date`"
	git push
