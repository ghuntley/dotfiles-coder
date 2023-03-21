.DEFAULT_GOAL := install

install:
	rm -f ~/.bash_profile
	rm -f ~/.config/nix/nix.conf
	rm -f ~/.config/nixpkgs/config.nix
	
	stow bash -t ~
	stow editorconfig -t ~
	stow git -t ~
	stow nix -t ~
	stow nixpkgs -t ~
	stow ssh -t ~
	stow starship -t ~
	stow tmux -t ~
	stow vim -t ~

publish:
	git diff
	git status
	echo ""
	printf "%s " "Ensure no secrets will be commited. Press enter to continue"
	read ans
	git add -A
	git commit -m "`date`"
	git push
