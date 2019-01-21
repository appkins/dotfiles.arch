default: install-yay init-repos install-packages install-dev-packages link-config set-shell sync-neovim show-notes

install-yay:
	./install-yay.sh

init-repos:
	bash scripts/repo.sh appkins aur-pkg/appkins_repo
	yay -Syy

install-packages:
	yay -S --needed --noconfirm `cat packages/core.txt`

install-dev-packages:
	yay -S --needed --noconfirm `cat packages/dev.txt`

enable-services:
	sudo systemctl enable lightdm NetworkManager tlp tlp-sleep
	sudo systemctl disable systemd-rfkill
	sudo tlp start

link-config:
	bash scripts/install.sh bin core shell apps

link-shell-config:
	bash scripts/install.sh shell

set-shell:
	chsh -s `which zsh`

sync-neovim:
	./shell/neovim/.config/nvim/sync.sh

show-notes:
	cat ./post-install.txt
