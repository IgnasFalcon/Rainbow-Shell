#/bin/bash
clear
#ERRORS
echo $PATH | grep /.local/bin > /dev/null
if [[ $(echo $?) == 1 ]]; then
    echo "~/.local/bin is not in path. Add it to your path and try again."
    exit 127
fi
#Installation
mv rainbow.sh rainbow
chmod +x ./rainbow
mv rainbow ~/.local/bin
mv asciirainbow.txt ~/.local/bin
echo "Installation completed successfully."
echo "Do you want to clean up the installation? (Recommended) (Y/n)"
read clean
if ! [[ $clean == "n" || $clean == "N" ]]; then
    cd ..
    rm -rf Rainbow-Shell
fi
#Finished

echo "Finished installing. If you want to execute the script run:"
echo "rainbow [cycles]"
exit 0
