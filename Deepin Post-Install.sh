#!/bin/bash

#IT
#Script compilato da TechFX (https://github.com/TechFX-IT) su base di quello creato da Massimo A. Carlofano (https://github.com/Maxximo88), appositamente per facilitare la post-installazione dell'OS Deepin Linux. Sarà possibile utilizzare lo script con qualsiasi distri usi APT, ma potrebbero esserci problemi di dipendenze.
#Copyright (c) 2017 TechFX.
#Questo programma è un software gratuito distribuito sotto licenza GNU, versione 3.
#Il software viene distribuito senza alcuna garanzia, nemmeno per le organizzazioni commerciali.

#EN
#Script compiled by TechFX (https://github.com/TechFX-IT) using the one compiled by Massimo A. Carlofano (https://github.com/Maxximo88) as base, just to simplify the Deepin post-installation process. Will be possible to use this script with every Linux Distribuion that uses APT, but may be problems with dependencies.
#Copyright (c) 2017 TechFX.
#This program is a free software, published with GNU licence, version 3.
#The software doesn't come with any kind of warranty, even not for commercial purposes.

#Code
#Intro
echo "Benvenuto nel programma post installazione."
echo ""
echo "Ora il sistema eseguirà un update generale delle repository e delle sue applicazioni prima di iniziare il processo di post installazione."
echo ""
echo "Consentire dunque i permessi di root digitando la password."
echo ""
#Eseguo update
sudo apt update
sudo apt upgrade
sudo apt-get update
sudo apt-get dist-upgrade -y
sudo apt full-upgrade -y
#Dico di aver finito
echo ""
echo "Processo di aggiornamento finito."
echo ""
#Funzione di Loop inizio (condizioni e do)
until [ ${n} = 30 ]
do
#Passaggio alla vera procedura di post-installazione
echo "Ora passiamo alla procedura. Verranno listate qua tutte le possibili funzioni offerte dal tool:

Post semplice
      1- Completo (se scelto il PC si riavvierà alla fine del processo)
      2- Esegui i tweak ma non installare le applicazioni consigliate (se scelto il PC si riavvierà alla fine del processo)
      3- Installa le applicazioni consigliate ma non eseguire i tweak

Post avanzata
      4- Imposta il mirror più veloce come predefinito modificando il file sources.list (opzione per il ripristino dell'originale in fondo)
      5- Eliminazione delle limitazioni del terminale di Deepin
      6- Fonts aggiuntivi per l'integrazione con Crossover, Wine e PlayOnLinux
      7- VLC Media Player
      8- Adobe Flash Player
      9- Dir MNGR
      10- Multimedia tweaks
      11- LibreOffice (alternativa a WPS)
      12- Tema Sifr per LibreOffice
      13- GIMP (GNU Image Manipulation Program), alternativa free a Photoshop
      14- Natron, software di compositing a nodi
      15- Lightworks, programma di editing professionale
      16- KDENLive, software di editing più basilare
      17- RawTherapee, alternativa a Lightroom
      18- Blue Fish, alternativa ad Adobe Dreamweaver
      19- Inkscape, programma di grafica vettoriale alternativo ad Illustrator
      20- Krita, software di disegno
      21- Blender, programma di compositing 3D a nodi
      22- OpenSCAD, programma di progettazione CAD
      23- GDebi, alternativa al Deepin Store
      24- Gestore pacchetti Synaptic
      25- Evince, visualizzatore di documenti
      26- Snap, nuovo metodo di Canonical di distribuire i pacchetti applicativi
      27- iFuse, supporto per device Apple
      28- Neofetch
      29- Ripristino del file sources.list originale
      30- Esci dal terminale
      31- Esci dal terminale e riavvia"

#Chiedo l'opzione da eseguire
echo "Scegli la funzione:"
#Leggo la risposta
read n
#Eseguo a seconda della risposta
if [ ${n} = "1" ]
  then
    #Cambio sources.list
    sudo mkdir /home/Deepin
    sudo git clone https://github.com/TechFX-IT/DeepinPostInstall /home/Deepin
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
    sudo cp /home/Deepin/sourcesmodified.list /etc/apt/sources.list
    #aggiornamento
    sudo apt update
    sudo apt upgrade
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    sudo apt full-upgrade -y
    #Ampliamento funzionalità terminale
    sudo apt-get install python-software-properties software-properties-common -y
    #Font Cross-platform
    sudo apt-get install ttf-mscorefonts-installer -y
    #VLC
    sudo apt-get install vlc -y
    #Adobe Flash Player
    sudo apt-get install flashplugin-nonfree -y
    #Dir MNGR
    sudo apt-get install dirmngr -y
    #Multimedia tweaks
    sudo apt install libdvd-pkg libdvdread4 python3 -y
    #LibreOffice
    sudo apt-get install libreoffice-base libreoffice-l10n-it -y
    #Tema Sifr LibreOffice
    sudo apt-get install libreoffice-style-sifr -y
    #GIMP
    sudo apt-get install gimp -y
    #Natron
    sudo apt-get install natron -y
    #Lightworks
    sudo apt-get install lightworks -y
    #KDENLive
    sudo apt-get install kdenlive -y
    #RawTherapee
    sudo apt-get install rawtherapee -y
    #Blue Fish
    sudo apt-get install bluefish -y
    #Inkscape
    sudo apt-get install inkscape -y
    #Krita
    sudo apt-get install krita -y
    #Blender
    sudo apt-get install blender -y
    #OpenSCAD
    sudo apt-get innstall openscad -y
    #GDebi
    sudo apt-get install gdebi -y
    #Synaptic
    sudo apt-get install synaptic -y
    #Evince
    sudo apt-get install evince -y
    #Snap
    sudo apt-get install snapd -y
    #iFuse
    sudo apt-get inastall ifuse -y
    #Neofetch
    sudo apt-get install neofetch -y
    echo ""
    echo ""
    echo ""
    echo "Ora il PC si riavvierà, attendere..."
    sudo reboot
elif [ ${n} = "2" ]
  then
    #Cambio sources.list
    sudo mkdir /home/Deepin
    sudo git clone https://github.com/TechFX-IT/DeepinPostInstall /home/Deepin
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
    sudo cp /home/Deepin/sourcesmodified.list /etc/apt/sources.list
    #aggiornamento
    sudo apt update
    sudo apt upgrade
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    sudo apt full-upgrade -y
    #Ampliamento funzionalità terminale
    sudo apt-get install python-software-properties software-properties-common -y
    #Font Cross-platform
    sudo apt-get install ttf-mscorefonts-installer -y
    echo ""
    echo ""
    echo ""
    echo "Ora il PC si riavvierà, attendere..."
    sudo reboot
elif [ ${n} = "3" ]
  then
    #Font Cross-platform
    sudo apt-get install ttf-mscorefonts-installer -y
    #VLC
    sudo apt-get install vlc -y
    #Adobe Flash Player
    sudo apt-get install flashplugin-nonfree -y
    #Dir MNGR
    sudo apt-get install dirmngr -y
    #Multimedia tweaks
    sudo apt install libdvd-pkg libdvdread4 python3 -y
    #LibreOffice
    sudo apt-get install libreoffice-base libreoffice-l10n-it -y
    #Tema Sifr LibreOffice
    sudo apt-get install libreoffice-style-sifr -y
    #GIMP
    sudo apt-get install gimp -y
    #Natron
    sudo apt-get install natron -y
    #Lightwotks
    sudo apt-get install lightworks -y
    #KDENLive
    sudo apt-get install kdenlive -y
    #RawTherapee
    sudo apt-get install rawtherapee -y
    #Blue Fish
    sudo apt-get install bluefish -y
    #Inkscape
    sudo apt-get install inkscape -y
    #Krita
    sudo apt-get install krita -y
    #Blender
    sudo apt-get install blender -y
    #OpenSCAD
    sudo apt-get innstall openscad -y
    #GDebi
    sudo apt-get install gdebi -y
    #Synaptic
    sudo apt-get install synaptic -y
    #Evince
    sudo apt-get install evince -y
    #Snap
    sudo apt-get install snapd -y
    #iFuse
    sudo apt-get inastall ifuse -y
    #Neofetch
    sudo apt-get install neofetch -y
    echo ""
    echo ""
    echo ""
    echo "Software installati correttamente."
elif [ ${n} = "4" ]
  then
    #Cambio sources.list
    sudo mkdir /home/Deepin
    sudo git clone https://github.com/TechFX-IT/DeepinPostInstall /home/Deepin
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
    sudo cp /home/Deepin/sourcesmodified.list /etc/apt/sources.list
    #aggiornamento
    sudo apt update
    sudo apt upgrade
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    sudo apt full-upgrade -y
    echo ""
    echo ""
    echo ""
    echo "Ora il PC si riavvierà, attendere..."
    sudo reboot
elif [ ${n} = "5" ]
  then
    #Ampliamento funzionalità terminale
    sudo apt-get install python-software-properties software-properties-common -y
elif [ ${n} = "6" ]
  then
    #Font Cross-platform
    sudo apt-get install ttf-mscorefonts-installer -y
elif [ ${n} = "7" ]
  then
    #VLC
    sudo apt-get install vlc -y
elif [ ${n} = "8" ]
  then
    #Adobe Flash Player
    sudo apt-get install flashplugin-nonfree -y
elif [ ${n} = "9" ]
  then
    #DIRMNGR
    sudo apt-get install dirmngr -y
elif [ ${n} = "10" ]
  then
    #Multimedia tweaks
    sudo apt install libdvd-pkg libdvdread4 python3 -y
elif [ ${n} = "11" ]
  then
    #LibreOffice
    sudo apt-get install libreoffice-base libreoffice-l10n -y
elif [ ${n} = "12" ]
  then
    #Tema Sifr per LibreOffice
    sudo apt-get install libreoffice-style-sifr -y
elif [ ${n} = "13" ]
  then
    #GIMP
    sudo apt-get install gimp -y
elif [ ${n} = "14" ]
  then
    #Natron
    sudo apt-get install natron -y
elif [ ${n} = "15" ]
  then
    #Lightworks
    sudo apt-get install lightowrks -y
elif [ ${n} = "16" ]
  then
    #KDENLive
    sudo apt-get install kdenlive -y
elif [ ${n} = "17" ]
  then
    #RawTherapee
    sudo apt-get install rawtherapee -y
elif [ ${n} = "18" ]
  then
    #Blue Fish
    sudo apt-get install bluefish -y
elif [ ${n} = "19" ]
  then
    #Inkscape
    sudo apt-get install inkscape -y
elif [ ${n} = "20" ]
  then
    #Krita
    sudo apt-get instll krita -y
elif [ ${n} = "21" ]
  then
    #Blender
    sudo apt-get install blender -y
elif [ ${n} = "22" ]
  then
    #OpenSCAD
    sudo apt-get install openscad -y
elif [ ${n} = "23" ]
  then
    #GDebi
    sudo apt-get install gdebi -y
elif [ ${n} = "24" ]
  then
    #Synaptic
    sudo apt-get install synaptic -y
elif [ ${n} = "25" ]
  then
    #Evince
    sudo apt-get install evince -y
elif [ ${n} = "26" ]
  then
    #Snap
    sudo apt-get install snapd -y
elif [ ${n} = "27" ]
  then
    #iFuse
    sudo apt-get install ifuse -y
elif [ ${n} = "28" ]
  then
    #Neofetch
    sudo apt-get install neofetch -y
elif [ ${n} = "29" ]
  then
    sudo rm -r /home/Deepin
    sudo mkdir /home/Deepin
    sudo git clone https://github.com/TechFX-IT/DeepinPostInstall /home/Deepin
    sudo cp /etc/apt/sources.list /etc/apt/sources.list.back
    sudo cp /home/Deepin/sourcesoriginal.list /etc/apt/sources.list
    #aggiornamento
    sudo apt update
    sudo apt upgrade
    sudo apt-get update
    sudo apt-get dist-upgrade -y
    sudo apt full-upgrade -y
    echo ""
    echo ""
    echo ""
    echo "Ora il PC si riavvierà, attendere..."
    sudo reboot
elif [ ${n} = "30" ]
  then
    echo ""
    echo ""
    echo ""
    echo "Uscendo..."
elif [ ${n} = "31" ]
  then
    echo ""
    echo ""
    echo ""
    echo "Riavviando..."
    sudo reboot
else
  echo "Inserisci un valore adeguato."
  fi
done
