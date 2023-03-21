# nix
if [ -e /home/ghuntley/.nix-profile/etc/profile.d/nix.sh ]; then . /home/ghuntley/.nix-profile/etc/profile.d/nix.sh; fi # added by Nix installer

# https://starship.rs/
eval "$(starship init bash)"

# Configure GHCUP
source .ghcup/env
