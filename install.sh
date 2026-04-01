#/bin/bash

clear

#ERRORS
echo $PATH | grep /.local/bin > /dev/null
if [[ $(echo $?) == 1 ]]; then
    echo "~/.local/bin is not in path. Add it to your path and try again."
    exit 127
fi

#Installation
mv -f rainbow.sh rainbow
chmod +x ./rainbow
mv -f rainbow ~/.local/bin
mv -f asciirainbow.txt ~/.local/bin
echo "Installing..."
sleep 2
echo "Installation completed successfully."
echo "Do you want to clean up the installation? (Recommended) (Y/n)"
read clean
if ! [[ $clean == "n" || $clean == "N" ]]; then
    cd ..
    rm -rf Rainbow-Shell
fi

#Finished
echo "Finished installing. If you want to execute the script run:"
echo "rainbow [CYCLES]"
exit 0
