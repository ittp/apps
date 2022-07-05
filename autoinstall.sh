
#!/bin/bash

$user=$(whoami)
#if [[ $user ]];
echo "ALT Linux software installation script by @tpa (https://github.com/ittp)"
echo "Notice! Run after login as root: su - root"

apt_proxy() {
  echo "comming soon..."  
  echo "currently use set_proxy_global"  
  
}

off_proxy() {
  export http_proxy=""
  export https_proxy=""
  export ftp_proxy=""
  export socks_proxy=""
}

enable_proxy() {
#  local proxy=$1
 # local port="3128"
 # if [[ -e $proxy ]];
#  then 
 #   proxy="$proxy:$port"
 #   echo "set proxy: $proxy:$port"
 # else 
 #   proxy="http://proxy.uts.vpn"
 #   port="3128"
 #   echo "set proxy: $proxy"
 # fi;
  echo "global proxy setup (uts)"
  export http_proxy="http://10.128.0.90:3128"
  export https_proxy="http://10.128.0.90:3128"
  export ftp_proxy="http://10.128.0.90:3128"
}

update() {
  echo "update packages"
  apt-get update
}

install_yandex() {
 
 apt-get update && apt-get install jq eepm -y
 epm play yandex-browser
 
}

install_drweb() {

local list="/etc/apt/sources.list.d/drweb.list"
if [ ! -f "$list" ]; then
    echo "Adding repository list to sources"
    echo "rpm http://repo.drweb.com/drweb/altlinux 11.1/x86_64 drweb" > $list
    apt-get update && apt-get install drweb-workstations -y
else 
    echo "Repository already added"
    cat $list 
    apt-get update && apt-get install drweb-workstations -y  
fi;

}


delete_firefox() {
  echo "cooming soon..."
  apt-get update && apt-get remove *firefox* -y
  echo "Notice! Need to check manunal if removed!"
}

echo "Init autoinstall actions"
enable_proxy
install_yandex
install_drweb
delete_firefox
off_proxy

echo "Happy end, maybe...) :)"






