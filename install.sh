sudo cp -rf hypr ~/.config/hypr
sudo cp -rf kitty ~/.config/kitty
sudo cp -rf waybar ~/.config/waybar
sudo cp -rf wofi ~/.config/wofi
sudo cp -rf configuration.nix /etc/nixos/configuration.nix
sudo cp -rf wall1.jpg ~/Pictures/wall1.jpg
mkdir ~/.local/share/applications
sudo cp -rf unityhub.desktop $HOME/.local/share/applications
sudo cp -rf unityhub-handler.desktop $HOME/.local/share/applications
sudo nixos-rebuild switch
xdg-mine default unityhub-handler.desktop x-scheme-handler/unityhub
update-desktop-database ~/.local/share/applications
read -p "Reboot System? (y/n)" answer
case "$answer" in
	[yY][eE][sS][yY])
		echo "Rebooting"
		sudo reboot
		;;
	*)
		echo "Done"
		;;
esac
