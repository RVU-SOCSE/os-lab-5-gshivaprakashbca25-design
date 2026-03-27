echo "----File permission & ownership----"
echo "enter file name:"
read file
if [ ! -f "$file" ]; then
    echo "file not found!"
    exit
fi
echo "enter permission:"
read perm
chmod $perm $file
echo "enter new owner name:"
read owner
chown $owner $file
echo "updated file details:"
ls -l $file
