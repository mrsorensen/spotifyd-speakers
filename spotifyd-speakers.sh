dir=~/.config/spotifyd/spotifyd.conf

choice="$(echo -e " Headphones\n Internal speakers" | rofi -dmenu -p Select\ device -l 2)"

if [ "$choice" == " Headphones" ]; then
	sed -i -e 's/hw:0/hw:1/g' $dir
	systemctl --user restart spotifyd
elif [ "$choice" == " Internal speakers" ]; then
	sed -i -e 's/hw:1/hw:0/g' $dir
	systemctl --user restart spotifyd
fi

