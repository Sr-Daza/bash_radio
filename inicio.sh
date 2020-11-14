#!/usr/bin/bash

abs_dir=$(dirname "$(readlink -f "$0")")
. radio.sh
            # Funcion de banner Título del programa.
banner () {

    clear
    figlet -c Sr Daza
    echo -e "\n\e[33m        -------------------------------------------------\n        -          bash_Radio\n        - Audios de  Estaciones de radio online \n       ---------------------------------------------------\e[0m \n\n"

leer_radio

}

while true;do

    banner

done
