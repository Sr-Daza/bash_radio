#!/usr/bin/bash

abs_dir=$(dirname "$(readlink -f "$0")")

lista () {

    total=$(echo "$2"|wc -l)
#    echo -e "total $total\n"
    i=1

    while read line;do

        if [ $i -le $total ]; then

            echo "$i - $line"
            ((i=i+1))

        fi

    done<<<$2

    num=""
    while ! [[ "$num" =~ ^[0-9]+$ ]] ;do

        echo -e "\n\nEscribe el NÚMERO del audio a escuchar \n \e[94m(ctrl+c = Salir del programa):   \e[0m"
        read -p "Elige un Número: " num

    done

    if [ 0 -lt $num ] && [ $num -le $total ];then

        titulo=$(echo "$nombres" | sed -n "$num p")
        audio=$(echo "$url"|sed -n "$num p")
        notify-send "$titulo"
        echo -e "Controles de reproduccion:\n    \e[33mp = pause/play\n    q = stop\n    9 = vol - \n    0 = vol +  \e[0m"
        mpv --no-video --really-quiet "$audio"

    else

        echo -e "\033[31m\033[5mWarn:Numero fuera de lista\033[0m\e[0m"
        sleep 5

    fi

}

leer_radio () {

    echo -e "\nCargando radios \n"
    url=$(cat $abs_dir/radios | grep http)
    nombres=$(cat $abs_dir/radios | grep -v http)

    lista "$url" "$nombres"
}
