#!/bin/bash -e

#This is a basic script that will create user friendly directories for Ubuntu or other distros (these are the same directories that come as default for regular users). If user root isn't enabled first, you must enable it. You can do that simply with sudo passwd root. Root will come with default sys files like /etc/ /sys /mnt 
#However, beyond that user root lacks the basic dirs of ~/Desktop, ~/Documents ~/Pictures. There are reasons why Ubuntu doesn't create those dirs by default but I won't get into that. I also won't get into the nuances of the discrepencies in 
#security posture between various distros. I agree with the Debian team, hence I offer this script. I hope it helps! 

dircreate() {
    sudo mkdir -vp /root/{Desktop,Documents,Pictures,Music,Videos} &&
    sudo chmod 700 /root/{Desktop,Documents,Pictures,Music,Videos} &&
    echo "Successfully changed permissions for root dirs"
}

if dircreate; then
    echo "Finished creating dir system for user root."
else
    echo "Error!"
    exit 1
fi
