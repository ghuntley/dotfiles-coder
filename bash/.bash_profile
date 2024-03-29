# nix
if [ -e /home/ghuntley/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ghuntley/.nix-profile/etc/profile.d/nix.sh; fi

# GHCUP
if [ -e /home/ghuntley/.ghcup/env ]; then source /home/ghuntley/.ghcup/env; fi

# aliases
alias z='lazygit'
alias g='lazygit'

# https://starship.rs/
eval "$(starship init bash)"

