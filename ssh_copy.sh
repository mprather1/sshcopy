echo "Checking for id_rsa...
"
if [ ! -f ~/.ssh/id_rsa ]
  then
    echo "Creating rsa key...
    "
    ssh-keygen -t rsa
  else
    echo "id_rsa already exists"
    echo "skipping..
    "
fi

echo "Enter username and press enter:"
read name

echo "Enter ip address of computer you want to connect to:"
read ipadd

ssh-copy-id ${name}@${ipadd}

echo "Checking for .bash_aliases..."
if [ ! -f ~/.bash_aliases ]
  then
    echo "Creating .bash_aliases..."
    touch ~/.bash_aliases
  else
    echo ".bash_aliases already exits"
    echo "skipping..."
fi

echo "Enter shortcut you would like to use to access remote computer:"
read shortcut

echo "alias ${shortcut}='ssh ${name}@${ipadd}'" >> ~/.bash_aliases

echo "
All done!!"
echo "
Go fuck yourself!!"
