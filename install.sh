sudo cp -rf hypr ~/.config/hypr
sudo cp -rf kitty ~/.config/kitty
sudo cp -rf waybar ~/.config/waybar
sudo cp -rf wofi ~/.config/wofi
sudo cp -rf configuration.nix /etc/nixos/configuration.nix
sudo cp -rf wall1.jpg ~/Pictures/wall1.jpg
sudo nixos-rebuild switch
echo "Do you want reboot PC?"
echo -n 1 -p answer
if [[ $answer =~ ^[Yy]$  || -z "$answer" ]]; then
	reboot
else
	echo "Done"
fi
