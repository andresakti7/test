#!/bin/bash
bgblue='\e[1;44m'
red='\033[0;31m'
green='\033[0;32m'
yellow='\033[0;33m'
plain='\033[0m'
blue='\033[0;34m'
ungu='\033[0;35m'
Green="\033[32m"
Red="\033[31m"
WhiteB="\e[0;37m"
BlueCyan="\e[0;36m"
Green_background="\033[42;37m"
Red_background="\033[41;37m"
Suffix="\033[0m"
stsdropbear=$(systemctl is-active dropbear)
# REPO    
    REPO="https://raw.githubusercontent.com/andresakti7/mokondo/main/"

function lane() {
  echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
}

function Credit_Sakti() {
  sleep 1
  echo -e ""
  echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
  echo -e "      ${ungu}Thank You For Using This Script-"
  echo -e "         Script Provided by Sakti"
  echo -e "  ━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━" | lolcat
  echo -e ""
  exit 0
}

function LOGO() {
  clear
  echo -e ""
  echo -e "┌━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┐" | lolcat
  echo -e "|              ${ungu}Sakti Tunneling${BlueCyan}              |" | lolcat
  echo -e "└━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━┘" | lolcat
  echo -e ""
}


uninstallXFactor() {
  clear
  apt remove dropbear -y
  apt remove dropbear-bin -y
  apt remove dropbear-run -y
  apt remove dropbear-initramfs -y
  apt purge dropbear -y
  apt purge dropbear-bin -y
  apt purge dropbear-run -y
  apt purge dropbear-initramfs -y
}

InstallDropbearV2016() {
  clear
  uninstallXFactor
  #wget atau curl versi dropbear nya dari server
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-bin_2016.deb
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-run_2016.deb
  dpkg -i dropbear-bin_2016.deb
  dpkg -i dropbear-run_2016.deb
  apt install busybox-static -y
  /etc/init.d/dropbear restart
  systemctl restart dropbear
  rm -rf dropbear-bin_2016.deb
  rm -rf dropbear-run_2016.deb
  
  if [[ $(systemctl is-active dropbear) == 'active' ]]; then
    sleep 2
    rm -rf /etc/.dropbearversion.db
    echo "Dropbear v2016.74" >>/etc/.dropbearversion.db
    dropbearvsn2=$(cat /etc/.dropbearversion.db)
    wget --no-check-certificate -O /etc/default/dropbear "${REPO}ssh/dropbear.conf"
    chmod +x /etc/default/dropbear
    /etc/init.d/dropbear restart
    /etc/init.d/dropbear status
    systemctl restart dropbear
    dropbear.sh
  else
    uninstallXFactor
    dpkg --configure -a
    apt install dropbear -y
    apt --fix-broken install
    apt install busybox-static -y
    /etc/init.d/dropbear restart
    systemctl restart dropbear
    sleep 2
    systemctl restart dropbear
    dropbear.sh
  fi
}

InstallDropbearV2017() {
  clear
  uninstallXFactor
  #wget atau curl versi dropbear nya dari server
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-bin_2017.deb
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-run_2017.deb
  dpkg -i dropbear-bin_2017.deb
  dpkg -i dropbear-run_2017.deb
  apt install busybox-static -y
  /etc/init.d/dropbear restart
  systemctl restart dropbear
  rm -rf dropbear-bin_2017.deb
  rm -rf dropbear-run_2017.deb
  
  if [[ $(systemctl is-active dropbear) == 'active' ]]; then
    sleep 2
    rm -rf /etc/.dropbearversion.db
    echo "Dropbear v2017.75" >>/etc/.dropbearversion.db
    dropbearvsn2=$(cat /etc/.dropbearversion.db)
    wget --no-check-certificate -O /etc/default/dropbear "${REPO}ssh/dropbear.conf"
    chmod +x /etc/default/dropbear
    /etc/init.d/dropbear restart
    /etc/init.d/dropbear status
    systemctl restart dropbear
    dropbear.sh
  else
    uninstallXFactor
    dpkg --configure -a
    apt install dropbear -y
    apt --fix-broken install
    apt install busybox-static -y
    /etc/init.d/dropbear restart
    systemctl restart dropbear
    sleep 2
    systemctl restart dropbear
    dropbear.sh
  fi
}

InstallDropbearV2018() {
  clear
  uninstallXFactor
  #wget atau curl versi dropbear nya dari server
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-bin_2018.deb
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-run_2018.deb
  dpkg -i dropbear-bin_2018.deb
  dpkg -i dropbear-run_2018.deb
  apt install busybox-static -y
  /etc/init.d/dropbear restart
  systemctl restart dropbear
  rm -rf dropbear-bin_2018.deb
  rm -rf dropbear-run_2018.deb
  
  if [[ $(systemctl is-active dropbear) == 'active' ]]; then
    sleep 2
    rm -rf /etc/.dropbearversion.db
    echo "Dropbear v2018.76" >>/etc/.dropbearversion.db
    dropbearvsn2=$(cat /etc/.dropbearversion.db)
    wget --no-check-certificate -O /etc/default/dropbear "${REPO}ssh/dropbear.conf"
    chmod +x /etc/default/dropbear
    /etc/init.d/dropbear restart
    /etc/init.d/dropbear status
    systemctl restart dropbear
    dropbear.sh
  else
    uninstallXFactor
    dpkg --configure -a
    apt install dropbear -y
    apt --fix-broken install
    apt install busybox-static -y
    /etc/init.d/dropbear restart
    systemctl restart dropbear
    sleep 2
    systemctl restart dropbear
    dropbear.sh
  fi
}

InstallDropbearV2019() {
  clear
  uninstallXFactor
  #wget atau curl versi dropbear nya dari server
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-bin_2019.deb
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-run_2019.deb
  dpkg -i dropbear-bin_2019.deb
  dpkg -i dropbear-run_2019.deb
  apt install busybox-static -y
  /etc/init.d/dropbear restart
  systemctl restart dropbear
  rm -rf dropbear-bin_2019.deb
  rm -rf dropbear-run_2019.deb
  
  if [[ $(systemctl is-active dropbear) == 'active' ]]; then
    sleep 2
    rm -rf /etc/.dropbearversion.db
    echo "Dropbear v2019.78" >>/etc/.dropbearversion.db
    dropbearvsn2=$(cat /etc/.dropbearversion.db)
    wget --no-check-certificate -O /etc/default/dropbear "${REPO}ssh/dropbear.conf"
    chmod +x /etc/default/dropbear
    /etc/init.d/dropbear restart
    /etc/init.d/dropbear status
    systemctl restart dropbear
    dropbear.sh
  else
    uninstallXFactor
    dpkg --configure -a
    apt install dropbear -y
    apt --fix-broken install
    apt install busybox-static -y
    /etc/init.d/dropbear restart
    systemctl restart dropbear
    sleep 2
    systemctl restart dropbear
    dropbear.sh
  fi
}


InstallDropbearV2020() {
  clear
  uninstallXFactor
  #wget atau curl versi dropbear nya dari server
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-bin_2020.deb
  wget -q --no-check-certificate https://saktitunneling.networkstoreid.asia:81/dropbear/dropbear-run_2020.deb
  dpkg -i dropbear-bin_2020.deb
  dpkg -i dropbear-run_2020.deb
  apt install busybox-static -y
  /etc/init.d/dropbear restart
  systemctl restart dropbear
  rm -rf dropbear-bin_2020.deb
  rm -rf dropbear-run_2020.deb
  
  if [[ $(systemctl is-active dropbear) == 'active' ]]; then
    sleep 2
    rm -rf /etc/.dropbearversion.db
    echo "Dropbear v2020.81" >>/etc/.dropbearversion.db
    dropbearvsn2=$(cat /etc/.dropbearversion.db)
    wget --no-check-certificate -O /etc/default/dropbear "${REPO}ssh/dropbear.conf"
    chmod +x /etc/default/dropbear
    /etc/init.d/dropbear restart
    /etc/init.d/dropbear status
    systemctl restart dropbear
    dropbear.sh
  else
    uninstallXFactor
    dpkg --configure -a
    apt install dropbear -y
    apt --fix-broken install
    apt install busybox-static -y
    /etc/init.d/dropbear restart
    systemctl restart dropbear
    sleep 2
    systemctl restart dropbear
    dropbear.sh
  fi
}

InstallDropbearDefault() {
  clear
  uninstallXFactor
  dpkg --configure -a
  apt install dropbear -y
  apt --fix-broken install
  apt install busybox-static -y
  /etc/init.d/dropbear restart
  sleep 2
  systemctl restart dropbear
  dropbear.sh
}

RestartDropbear() {
  clear
  /etc/init.d/dropbear restart > /dev/null 2>&1
  systemctl -q restart dropbear
  if [[ $(systemctl is-active dropbear) == 'active' ]]; then
    echo -e "Restart Success"
    sleep 2
    dropbear.sh
  else
    echo -e "Restart Failed"
    echo
    echo -e " Command :"
    echo -e "   systemctl restart dropbear"
    sleep 2
    dropbear.sh
  fi
}

ViewMenu() {
  #rm -rf /etc/.dropbearversion.db
  #dropbearvsn=$(dropbear -V)
  #echo " ${dropbearvsn}" >>/etc/.dropbearversion.db
  #dropbearvsn2=$(cat /etc/.dropbearversion.db)
  clear
  LOGO
  echo -e "               ${yellow}Dropbear Menu${Suffix}"
  lane
  echo -e "            VERSION :  ${dropbearvsn2} "
  echo -e "            STATUS  :  ${stsdropbear} "
  lane
  echo
  echo -e "       1.) Dropbear 2016"
  echo -e "       2.) Dropbear 2017"
  echo -e "       3.) Dropbear 2018"
  echo -e "       4.) Dropbear 2019"
  echo -e "       5.) Dropbear 2020"
  echo -e "       6.) Dropbear Default System"
  echo -e "       7.) Restart Dropbear"
  echo -e "       8.) Back to Menu"
  echo -e "       x.) Exit"
  echo
  read -rp " Select from options [1-8 or x] : " port
  echo
  
  case ${port} in
  1)
    InstallDropbearV2016
  ;;
  2)
    InstallDropbearV2017
  ;;
  3)
    InstallDropbearV2018
  ;;
  4)
    InstallDropbearV2019
  ;;
  5)
    InstallDropbearV2020
  ;;
  6)
    InstallDropbearDefault
  ;;
  7)
    RestartDropbear
  ;;
  8)
    ##
  ;;
  x)
    exit 0
  ;;
  esac
}

ViewMenu
