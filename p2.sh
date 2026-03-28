echo "Choose an operation:"
echo "1. Create a file"
echo "2. Copy a file"
echo "3. Move a file"
echo "4. Delete a file"
echo "5. Display a file"
echo "6.Exit"
read -p "Enter choice [1-6]: " choice

case $choice in
    1)
        read -p "Enter filename to create: " fname
        if [ -f "$fname" ]; then
            echo "Error: File already exists!"
        else
            read -p "Enter content: " content
            echo "$content" > "$fname"
            echo "File '$fname' created successfully."
        fi
        ;;
    2)
        read -p "Enter source filename: " source
        read -p "Enter destination filename: " dest
        if [ -f "$source" ]; then
            cp "$source" "$dest"
            echo "File copied successfully."
        else
            echo "Error: Source file does not exist!"
        fi
        ;;
    3)
        read -p "Enter filename to move: " source
        read -p "Enter new filename: " dest
        if [ -f "$source" ]; then
            mv "$source" "$dest"
            echo "File moved successfully."
        else
            echo "Error: File does not exist!"
        fi
        ;;
    4)
        read -p "Enter filename to delete: " fname
        if [ -f "$fname" ]; then
            rm "$fname"
            echo "File deleted successfully."
        else
            echo "Error: File doesn't exist!"
        fi
        ;;
    5)
        read -p "Enter filename to display: " fname
        if [ -f "$fname" ]; then
            echo "Content of '$fname':"
            cat "$fname"
        else
            echo "Error: File doesn't exist!"
        fi
        ;;
    6)
         echo "exiting program"
           exit
            ;;
    *)
        echo "Invalid choice!"
        ;;
esac
