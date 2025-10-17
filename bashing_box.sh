#!/bin/bash

default_objects=("Bandages" "Champagne" "Rope" "Festive sweater" "Mantle" "Soap" "SLeigh" "Snowman" "Bonfire" "Moccasin")

default_objects_index=0

show_entire_list() {
	read -p "Do you want to select first choice and show the entire list (y/n)" show_list
	if [[ "$show_list" = "Y" || "y" ]]; then
		show 0

}

print_certain_item() {
	read -p "Do you eant to print an item in x position in list (y/n)" item_position
	if [[ "$item_position" = "Y" || "y" ]]; then
		print 0

}

echo "Current list of objects: ${default_objects[@]}"

echo "Choose an option"

echo "1. Print the entire list"

echo "2. Print item at X position in list"

echo "3. Add item to list"

echo "4. Remove last item from list"

echo "5. Remove item from X position"

echo "6. Exit"

read -p "What would you like to do?" choice

case $choice 
	
	1)

	echo "List ${default_objects[@]}"
	;;

	2)

	read -p "Enter an item in X position" positon 0
	
	echo "You have picked an item from ${default_objects[@]} "
	;;

	3) 

	read -p "Enter a new item" new_item

	echo "You have added a new item to ${default_objects[@](+1)}"
	;;

	4)

	read -p "Remove last item from list" last_time

	echo "You have removed last item from list ${default_objects[@](-1)"
	;;