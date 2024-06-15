borderFile=/tmp/borders

if [[ -f /tmp/borders ]]; then
	# borders width=0
	yabai -m config external_bar main:0:0
	yabai -m space --padding abs:16:16:16:16 --gap abs:16
	rm $borderFile
else
	# borders width=4
	yabai -m config external_bar main:45:0
	yabai -m space --padding abs:20:40:40:20 --gap abs:40
	touch $borderFile
fi

sketchybar --bar hidden=toggle
