#!/bin/bash
DF='\e[39m'
Bold='\e[1m'
Blink='\e[5m'
yell='\e[33m'
red='\e[31m'
green='\e[32m'
blue='\e[34m'
PURPLE='\e[35m'
cyan='\e[36m'
Lred='\e[91m'
Lgreen='\e[92m'
Lyellow='\e[93m'
NC='\e[0m'
GREEN='\033[0;32m'
ORANGE='\033[0;33m'
LIGHT='\033[0;37m'
grenbo="\e[92;1m"
# ==========================================
# Getting
MYIP1=$(wget -qO- ipinfo.io/ip);
MYIP=$(curl -LksS ipv4.icanhazip.com)
username1=$(cat /usr/bin/user)
passcode=$(cat /etc/profileds/rc0.d)
IPVPS_SAVE=$(cat /usr/bin/IPVPS_SAVE)
echo -e "\e[32mloading...\e[0m"
clear
# Valid Script
VALIDITY () {
    today=$(date -d "0 days" +"%Y-%m-%d")
    Exp1=$(curl -LksS https://saktitunneling.networkstoreid.asia:81/updateip/ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $4}')
    Exp1web=$(curl -LksS https://www.belivpn.networkstoreid.asia/validasi-ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $4}')
    if [[ $today < $Exp1 || $today < $Exp1web ]]; then
    echo -e "\e[32mYOUR SCRIPT ACTIVE..\e[0m"
    else
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${Lred}                PERMISSION DENIED ! ${NC}"
echo -e "${Lyellow}     Your VPS ${NC}( ${green}$MYIP${NC} ) ${Lyellow}Has been Banned "
echo -e "         Buy access permissions for scripts "
echo -e "                 Contact Admin :"
echo -e "             ${green}Telegram t.me/NewtworkStore_ID "
echo -e "             WhatsApp wa.me/0859106848595"
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
    exit 0
fi
}
IZIN=$(curl -LksS https://saktitunneling.networkstoreid.asia:81/updateip/ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $5}')
IZINWEB=$(curl -LksS https://www.belivpn.networkstoreid.asia/validasi-ip | grep $username1$IPVPS_SAVE$passcode | awk '{print $5}')
if [[ $IPVPS_SAVE = $IZIN || $IPVPS_SAVE = $IZINWEB ]]; then
echo -e "\e[32mPermission Accepted...\e[0m" >/dev/null 2>&1
VALIDITY
else
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
echo -e "${Lred}                PERMISSION DENIED ! ${NC}"
echo -e "${Lyellow}     Your VPS ${NC}( ${green}$MYIP${NC} ) ${Lyellow}Has been Banned "
echo -e "         Buy access permissions for scripts "
echo -e "                 Contact Admin :"
echo -e "             ${green}Telegram t.me/NewtworkStore_ID "
echo -e "             WhatsApp wa.me/0859106848595"
echo -e "${Lyellow}━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━━${NC}"
exit 0
fi
echo -e "\e[32mloading...\e[0m"
clear
function con() {
    local -i bytes=$1;
    if [[ $bytes -lt 1024 ]]; then
        echo "${bytes}B"
    elif [[ $bytes -lt 1048576 ]]; then
        echo "$(( (bytes + 1023)/1024 ))KB"
    elif [[ $bytes -lt 1073741824 ]]; then
        echo "$(( (bytes + 1048575)/1048576 ))MB"
    else
        echo "$(( (bytes + 1073741823)/1073741824 ))GB"
    fi
}
echo -n > /tmp/other.txt
#echo -n > /var/log/xray/access.log
sleep 3
data=( `cat /etc/xray/config.json | grep '#!' | cut -d ' ' -f 2 | sort | uniq`);
echo -e "${cyan}┌─────────────────────────────────────────────────────────┐\033[0m"
echo -e " ░░░░░░░░░░░░░░░░░█ TROJAN BANDWIDTH USAGE █░░░░░░░░░░░░░░$NC" | lolcat
echo -e " ░░░░░░░░░░░░░░░░░░░░█ XRAY BANDWIDTH █░░░░░░░░░░░░░░░░░░░$NC" | lolcat
echo -e "${cyan}└─────────────────────────────────────────────────────────┘\033[0m"
#echo -e "  (User)      (Last Login)  (Usage) (Limit) (Total IP)" | lolcat
echo -e "  (User)      (Last Login) (Total)  (Usage) (Limit) (LOG)" | lolcat
echo -e "\033[1;91m┌─────────────────────────────────────────────────────────┐\033[0m"
for akun in "${data[@]}"
do
if [[ -z "$akun" ]]; then
akun="tidakada"
fi
echo -n > /tmp/iptrojan.txt
#data2=( `cat /var/log/xray/access.log | tail -n 500 | cut -d " " -f 4 | sed 's/tcp://g' | cut -d ":" -f 1 | sort | uniq`);
data2=( `cat /var/log/xray/access.log | tail -n 500 | cut -d " " -f 4 | sed 's/tcp://g' | cut -d. -f1,2 | sort | uniq`);
for ip in "${data2[@]}"
do
#jum=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 4 | sed 's/tcp://g' | cut -d ":" -f 1 | grep -w "$ip" | sort | uniq)
jum=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 4 | sed 's/tcp://g' | sed '/^$/d' | cut -d. -f1,2 | sed s/127.0.0.1//g | grep -w "$ip" | sort | uniq)
if [[ "$jum" = "$ip" ]]; then
echo "$jum" >> /tmp/iptrojan.txt
else
echo "$ip" >> /tmp/other.txt
fi
jum2=$(cat /tmp/iptrojan.txt)
sed -i "/$jum2/d" /tmp/other.txt > /dev/null 2>&1
done
jum=$(cat /tmp/iptrojan.txt)
if [[ -z "$jum" ]]; then
echo > /dev/null
else
jum2=$(cat /tmp/iptrojan.txt | wc -w)
byte=$(cat /etc/trojan/limit-quota/${akun})
lim=$(con ${byte})
wey=$(cat /etc/limit/trojan/${akun})
wey5=$(cat /etc/limit/upload/trojan/${akun})
wey3=$(( $wey5 * 3 ))
wey1=$(( $wey3 + $wey ))
#wey2=$(expr "$wey" + "$wey1")
wey6=$(( $wey5 + $wey ))
wey2=$(( $wey6 + $wey1 ))
gb=$(con ${wey2})
gb1=$(con ${wey6})
gbrx=$(con ${wey1})
gbtx=$(con ${wey6})
lastlogin=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 2 | tail -1)
lastlogindate=$(cat /var/log/xray/access.log | grep -w "$akun" | tail -n 500 | cut -d " " -f 1-2 | tail -1)
logline=$(cat /var/log/xray/access.log | grep -w "email: ${akun}" | wc -l)
if [ "$lim" == 0B ]; then
    limsd="UNLI"    
fi
if [ "$lim" != 0B ]; then
    limsd=$(con $(cat /etc/trojan/limit-quota/${akun} 2>/dev/null))
fi
printf "  %-13s %-11s %-8s %-8s %-6s %-3s\n"   "${akun}" "${lastlogin}"      " ${jum2}IP"      "${gb1}"   "${limsd}" "${logline}" | lolcat;
#printf "  %-13s %-11s %-8s %-8s %-6s %-3s\n"   "${akun}" "$lastlogin"      " ${jum2}IP"      "${gb1}"   "${lim}" "${logline}" | lolcat;
#printf "  %-13s %-11s %-8s %-10s %1s\n"   "${akun}" "$lastlogin"      " ${gb1}"      "${limsd}"   "$jum2"| lolcat;
user=$akun
if [ ! -e /etc/trojanbw ]; then
  mkdir -p /etc/trojanbw
fi
DATADB=$(cat /etc/trojanbw/.trojanbw.db | grep "^#trbw" | grep -w "${user}" | awk '{print $2}')
if [[ "${DATADB}" != '' ]]; then
  sed -i "/\b${user}\b/d" /etc/trojanbw/.trojanbw.db
fi
#echo "#trbw ||${user} ${lastlogin} Usage:${gb} Limit:${lim} Total*Ip:${jum2}" >>/etc/trojanbw/.trojanbw.db
#echo "#trbw | ${user} | ${lastlogin} | ${gb} | ${lim} | ${jum2} |>>" >>/etc/trojanbw/.trojanbw.db
#echo "#trbw | ${lastlogin} ${user} Usage:${gb} Limit:${lim} IPLogin:0${jum2} |>>" >>/etc/trojanbw/.trojanbw.db
#echo "#trbw | ${lastlogin} * ${gb} * ${lim} * ${jum2} * ${user}" >>/etc/trojanbw/.trojanbw.db
#echo "#trbw | * ${lastlogin} * ${jum2} * ${gbtx} * ${gb} * ${lim} * ${user} *" >>/etc/trojanbw/.trojanbw.db
echo "#trbw | * ${lastlogindate} * ${gbtx} * ${limsd} * ${user} *" >>/etc/trojanbw/.trojanbw.db
fi 
rm -rf /tmp/iptrojan.txt
done
rm -rf /tmp/other.txt
echo ""
echo -e "\033[1;91m└─────────────────────────────────────────────────────────┘\033[0m"
echo -e "  (User)      (Last Login) (Total)  (Usage) (Limit) (LOG)" | lolcat
echo -e "${cyan}┌─────────────────────────────────────────────────────────┐\033[0m"
echo -e " ░░░░░░░░░░░░░░░░░█ Autoscript by Sakti █░░░░░░░░░░░░░░░░░" | lolcat
echo -e "${cyan}└─────────────────────────────────────────────────────────┘\033[0m"
echo ""
echo -e " ${ORANGE}1.${NC} \033[0;36m Recheck Trojan User Login (Xray Bandwidth)${NC}"
echo -e " ${ORANGE}2.${NC} \033[0;36m Check Trojan Login (Xray as Vnstat Usage)${NC}"
echo -e " ${ORANGE}3.${NC} \033[0;36m Check Trojan as Vnstat Usage Details${NC}"
echo -e " ${ORANGE}m.${NC} \033[0;36m Back to Trojan Menu${NC}"
echo -e ""
read -p "Select From Options [ 1 - 3 or m ] : " menu
case $menu in
1)
    cektrxray
    ;;
2)
    cektr
    ;;
3)
    cektr-rxtx
    ;;
m)
    m-trojan
    ;;
*)
    menu
    ;;
esac
