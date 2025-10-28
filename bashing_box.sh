#!/bin/bash
#Array of 10 objects
default_objects=("Bandages" "Champagne" "Rope" "Festive sweater" "Mantle" "Soap" "SLeigh" "Snowman" "Bonfire" "Moccasin")

default_objects_index=0
#SHow entire list of objects function
show_entire_list() {
	echo "This is the full list"
	for item in "${defualt_objects[@]}"; do
		echo "$item"
	done
}
#Print item at X position in array function
print_certain_item() {
	read -p "Enter position of item ${default_objects[@]}" pos
	if [[ $pos -ge 0 && $pos -lt ${default_objects[@]} ]]; then
		echo "Item at $pos: ${default_objects[@]}"
	else
		echo "Invalid position"
	fi
}
#Add item to array function
add_item() {
	read -p "Enter new item" new_item
	default_objects+=($new_item)
	echo "$new_item added to list"
}
#Remove last item in array function
remove_last_item() {
	unset ${default_objects}[-1]
	echo "Last item from list was removed"
}
# Remove item at X position function
remove_certain_item() {

	read -p "Enter psoition to remove (0-${default_object[@]}" pos
	if [[ $pos -ge 0 && $pos -lt ${default_objects[@]} ]]; then
		unset ${default_objects[pos]}
		default_objects=(${default_objects[@]})
		echo "Item at $pos has been removed"
	else
		echo "Invalid position"
	fi
}
# Exit function
exit_game() {
	echo "Goodbye, and thanks for playing!"
	exit 0
}

echo "Current list of objects: ${default_objects[@]}"

echo "Choose an option"

echo "1. Print the entire list"

echo "2. Print item at X position in list"

echo "3. Add item to list"

echo "4. Remove last item from list"

echo "5. Remove item from X position"

echo "6. Save your current box to a file"

echo "7. Load a previously saved box"

echo "8. List exisiting saved boxes"

echo "9. Delete a saved box"

echo "10. Exit"

read -p "What would you like to do? [1-10] " choice

case $choice in
	
	1) show_entire_list 
		;;
	2) print_certain_item 
		;;
	3) add-item 
		;;
	4) remove_last_item 
		;;
	5) remove_certain_item 
		;;

	6) exit_game 
		;;
esac

