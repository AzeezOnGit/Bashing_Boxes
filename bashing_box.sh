#!/bin/bash
#Array of 10 objects
default_objects=("Bandages" "Champagne" "Rope" "Festive sweater" "Mantle" "Soap" "SLeigh" "Snowman" "Bonfire" "Moccasin")

default_objects_index=0

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

	read -p "Enter psoition to remove (${default_object[@]}" pos
	if [[ $pos -ge 0 && $pos -lt ${default_objects[@]} ]]; then
		unset ${default_objects[pos]}
		default_objects=(${default_objects[@]})
		echo "Item at $pos has been removed"
	else
		echo "Invalid position"
	fi
}

save_box() {
	read -p "Enter a name for your box" name 
	echo "${default_objects[@]}" > "data/$name.txt"
	echo "Box saved as $name.txt in data/ folder"
}

load_box () {
	read -p "ENter name of box you want to load" name 
	if [[ "data/$name.txt" ]]; then
		map -t default_objects < "data/$name.txt"
		echo "Box $name was loaded successfully"
	else
		echo "The name of file doesn't exist in folder"
	fi
}

list_existing_boxes
	list_files=/home/azeezvbox/Bashing_Boxes/data
	echo ""
	echo "The existing boxes have been saved"
	sleep 1
	echo ""
	ls $list_files
}

delete_saved_box() {
	list_files=/home/azeezvbox/Bashing_Boxes/data
	ls $list_files
	echo ""
	read -p "Enter the name of the file you would like to delete" answer
	echo ""
	rm $data/answer
	echo "Your file $answer has been deleted"
}

# Exit function
exit_game() {
	read -p "Would yu like to save before exiting (yes/no):" answer
	if [[ $answer == "y" ]]; then
		save_box 
		echo "You haved saved your box, thanks for playing!"
		exit 0
	else
		echo "Aww man, it is okay that you don't want to save it, thanks for playing anyways"
		exit 0
	fi

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
	6) save_box
		;;
	7) load_box
		;;
	8) list_existing_boxes
		;;
	9) delete_saved_box
		;;
	10) exit_game 
		;;
	*)
		;;
esac

