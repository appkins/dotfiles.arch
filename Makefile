default: install-yay install-packages enable-services link-config set-shell sync-neovim show-notes

define list_subdirs
    cd ${1} && ls -d */ && cd ..
endef

define stow_dir
	stow -t ${HOME} -d ${1} --restow `$(call list_subdirs,${1})`
endef

install-yay:
	./install-yay.sh

install-packages:
	yay -S --needed --noconfirm `cat packages.txt`

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
