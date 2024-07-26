#!/bin/bash

# Form login
read -p "Username: " username
read -s -p "Password: " password

# Memeriksa apakah username dan password benar
if [ "$username" == "lopsus" ] && [ "$password" == "root" ]; then
    # Jika benar, lanjutkan ke bagian selanjutnya dari skrip
    clear
    echo "welcome to TOOLS Lopsus"
    sleep 2
    # Bagian lain dari skrip di sini
    e="echo -e "
    r='\033[0;31m'
    h='\033[0;32m'
    k='\033[0;33m'
    b='\033[0;34m'
    bl="\033[1;34m"
    purple='\033[0;35m'
    cyan='\033[0;36m'
    p='\033[0;37m'
    bgr='\033[41m'
    bgh='\033[42m'
    bgk='\033[43m'
    bgb='\033[44m'
    bgpurple='\033[45m'
    bgc='\033[46m'
    bgp='\033[47m'
    clear
    play -q robot.mp3 &>/dev/null &
    $e  "        $r installing package...!"
    apt install golang sox -y
    clear
    play -q robot2.mp3 &>/dev/null &
    $e "        $h Installing Package Succes"
    sleep 3
    while true; do
        clear
        $e $h"             █░░ █▀█ █▀█ █▀ █░█ █▀"
        $e $h"             █▄▄ █▄█ █▀▀ ▄█ █▄█ ▄█"
        echo
        echo
        play -q hello.mp3 &>/dev/null
        play -q robot2.mp3 &>/dev/null &
        $e $bl"        ╔════════════════════════════╗"
        $e $bl"        ║ $r Name$cyan :$h Lopsus$bl             ║"
        $e $bl"        ╚════════════════════════════╝"
        $e $bl"        ║                            ║"
        $e $bl"╔═════════════════════════════════════════════╗"
        $e $bl"║ $k 1.$h Blow          $k 0.$h KELUAR$bl                ║"
        $e $bl"╚═════════════════════════════════════════════╝"
        echo
        $e $bl "┌[$r DDOS BY $bl]-($h Lopsus $bl)"
        read -p " └>  " pil
        $e $cyan
        if [ $pil = "1" ]; then
            read -p "URL   ===> : " ip
            play -q klik.mp3 &>/dev/null &
            read -p "PORT  ===> : " port
            play -q klik.mp3 &>/dev/null &
            read -p "DETIK ===> : " DETIK
            play -q klik.mp3 &>/dev/null &
            $e $k
            go run Blow.go -url $ip $port $DETIK
        elif [ $pil = "0" ]; then
            $e $bgh "EMOT BATU"
            exit 1
        else
            $e $m " Tuan ! Input Yang Anda Masukan Salah !"
            sleep 2
            read -p " Enter Untuk Menggulang"
        fi
    done
else
    echo "Username atau password salah."
    exit 1
fi
