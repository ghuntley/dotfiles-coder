.DEFAULT_GOAL := install

install:
	echo fs.inotify.max_user_watches=100000 | sudo tee -a /etc/sysctl.conf; sudo sysctl -p

	stow bash -t ~
	stow editorconfig -t ~
	stow git -t ~
	stow nix -t ~
	stow nixpkgs -t ~
	stow profile -t ~
	stow ssh -t ~
	stow starship -t ~
	stow tmux -t ~
	stow vim -t ~
	nix-env -i \
		bat \
		diff-so-fancy \
		curl \
		direnv \
		gh \
		git \
		git-lfs \
		htop \
		jq \
		lazygit \
		neovim \
		starship \
		tmux

publish:
	git diff
	git status
	echo ""
	printf "%s " "Ensure no secrets will be commited. Press enter to continue"
	read ans
	git add -A
	git commit -m "`date`"
	git push
