#!/bin/bash

#fecha: 08.092019
#AUTOR: EQUINOKX
#Proposito: actualizar el sistema y limiar la pantalla

NOMBRE="Dart - Security"

echo "Dart-Sicherheit...飛鏢-安全...ダーツ-セキュリティ...дротик-безопасность."
echo "                                                           "
echo "      Vamos a actualizar el sistema de kali linux         "
echo "                        $NOMBRE                   "
echo "                                                           "
echo "Dart-Sicherheit...飛鏢-安全...ダーツ-セキュリティ...дротик-безопасность."
echo "                                                           "
echo "      Selecciona alguna de las siguientes opciones         "
echo "		1- apt-get update"
echo "		2- apt-get upgrade"
echo "		3- apt-get update && apt-get upgrade"
echo "		4- apt-get dist-upgrade"
echo "		5- Verificar Version"
echo "		6- Informacion del sistema"
echo "		7- Actualizar sources.list"
echo "		8- Salir"
echo "		     "
read -p "> " opc

if [ $opc -eq 1 ];then

	clear
	echo "Actualizando la lista de paquetes disponibles"
	sleep 3
	apt-get update
	echo "___________________________________________________________"
	echo "			Completado con exito"
elif [ $opc -eq 2 ]; then

	clear
	echo "Actualiando la version de los paquetes"
	sleep 3
	apt-get upgrade
	echo "___________________________________________________________"
	echo "			Completado con exito"

elif [ $opc -eq 3 ]; then

	clear
	echo "Actualiando la version y lista de los paquetes"
	sleep 3
	apt-get update && apt-get upgrade
	echo "___________________________________________________________"
	echo "			Completado con exito"

elif [ $opc -eq 4 ]; then

	clear
	echo "Actualiando la distribucion"
	sleep 3
	apt-get update && apt-get upgrade
	echo "___________________________________________________________"
	echo "			Completado con exito"

elif [ $opc -eq 5 ]; then

	clear
	echo "Version del sisteme operativo"
	sleep 3
	lsb_release -a
	echo "___________________________________________________________"
	echo "			Completado con exito"

elif [ $opc -eq 6 ]; then

	clear
	echo "Informacion del sistema"
	echo "Se instalara neofetch solo escriba y para confirmar"
	sleep 3
	apt install neofetch
	clear
	sleep 2
	neofetch
	echo "___________________________________________________________"
	echo "			Completado con exito"

elif [ $opc -eq 7 ]; then

	clear
	echo "Actualizar sources.list"
	sleep 3
	cd /etc/apt
	truncate -s 0 sources.list
	echo deb http://http.kali.org/kali kali-rolling main non-free contrib > sources.list
	sleep 3
	echo deb-src http://http.kali.org/kali kali-rolling main non-free contrib >> sources.list
	cat sources.list
	echo "___________________________________________________________"
	echo "			Listas actualizadas con exito"
	echo "			Ahora actualice "

else
	clear
	echo ".Dart-Security...Dart-Sicherheit...飛鏢-安全...ダーツ-セキュリティ...дротик-безопасность."
	echo "                                                           "
	echo ".				Saliendo del Scritp			      		  ."
	echo ".		> hc-security.com.mx                    > by:EQUINOCKX        		  ."
	echo "                                                           "
	echo ".panah-keamanan...dart-güvenlik...dart-sécurité...дротик-безпека...noolemäng-turvalisus"
fi

