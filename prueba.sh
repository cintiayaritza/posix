

#!/bin/bash
 
#Muestra el menu general
function _menuPrincipal()
{
    echo "1) parcial 1"
    echo "2) parcial 2"
    echo "3) parcial 3"
    echo "4) proyectos"
    echo "5) Salir"
    echo
    echo -n "Indica una opcion: "
}

function _submenu1()
{
    echo
    echo "1) 1"
    echo "2) 2"
    echo "3) 3"
    echo "4) 4"
    echo "5) 5"
    echo "6) 6"
    echo "7) 7"
    echo "8) 8"
    echo "9) 9"
    echo "10) Salir"
    echo
    echo -n "Indica una opcion: "
}

function _submenu2()
{
    echo
    echo "1) 1"
    echo "2) 2"
    echo "3) Salir"
    echo
    echo -n "Indica una opcion: "
}

function _submenu3()
{
    echo
    echo "1) 1"
    echo "2) 2"
    echo "3) Salir"
    echo
    echo -n "Indica una opcion: "
}

function _submenu4()
{
    echo
    echo "1) 1"
    echo "2) 2"
    echo "3) 3"
    echo "4) Salir"
    echo
    echo -n "Indica una opcion: "
}

opc=0
until [ $opc -eq 4]
do
    case $opc in

        1)
            opc1=0
            until [ $opc1 -eq 10 ]
            do
                case $opc1 in
                    1)
                        echo "parcia  1  1"
                         cat /home/cintya/Documentos/parcial1/bandith.txt

                        ;;
                    2)
                        echo "parcial 1  2"
                          cat /home/cintya/Documentos/parcial1/changecmd.sh 

                        ;;
                    3)
                        echo "parcial 1  3"
                        cat /home/cintya/Documentos/parcial1/practica1y2.txt
                        ;;
                     4)
                        echo "parcial 1  4"
                        cat /home/cintya/Documentos/parcial1/practica3.txt
                        ;;
                    5)
                        echo "parcial 1  5"
                         cat /home/cintya/Documentos/parcial1/practica4.txt
                        ;;
                    6)
                        echo "parcial 1  6"

                          cat /home/cintya/Documentos/parcial1/practica5.txt                        
                        ;;
                    7)
                        echo "parcial 1  7"
                        cat /home/cintya/Documentos/parcial1/README.md
                        ;;
                    8)
                        echo "parcial 1  8"
                        cat /home/cintya/Documentos/parcial1/rutas-absolutas-relativas.pdf
                        ;;
                    9)
                        echo "parcial 1  9"
                        cat /home/cintya/Documentos/parcial1/comandocmd.txt
                        ;;

                    *)
                        _submenu1
                        ;;
                esac
                read opc1
            done
            _menuPrincipal
            ;;
     2)
            opc2=0
            until [ $opc2 -eq 3 ]
            do
                case $opc2 in
                    1)
                        echo "parcial 2 1"
                        cat  /home/cintya/Documentos/parcial2/practica-webminal.sh
                        ;;
                    2)
                        echo "parcial 2 2"
                        cat /home/cintya/Documentos/parcial2/practica-webminal.sh
                        ;;
                    *)
                        _submenu2
                        ;;
                esac
                read opc2
            done
            _menuPrincipal
            ;;
         
    3)
            opc3=0
            until [ $opc3 -eq 3 ]
            do
                case $opc3 in
                    1)
                        echo "parcial 3 1"

                        cat /home/cintya/Documentos/parcial3/linuxShell.sh 
                        ;;
                    2)
                        echo "parcial 4 2"
                        cat /home/cintya/Documentos/parcial3/hark.png
                        ;;
                    *)
                        _submenu3
                        ;;
                esac
                read opc3
            done
            _menuPrincipal
            ;;

             4)
            opc4=0
            until [ $opc4 -eq 4 ]
            do
                case $opc4 in
                    1)
                        echo "proyecto   1"
                        cat /home/cintya/Documentos/proyectos/cis-aliyum-alibabacloud-Benchmark.sh
                        ;;
                    2)
                        echo "proyecto   2"
                        cat /home/cintya/Documentos/proyectos/CIS_SUSE_Linux_Enterprise_15_Benchmark.sh
                        ;;

                     3)
                        echo "proyecto 3"
                        cat /home/cintya/Documentos/proyectos/README.md
                        ;;   
                    *)
                        _submenu4
                        ;;
                esac
                read opc4
            done
            _menuPrincipal
            ;;

        *)
            _menuPrincipal
            ;;
    esac
    read opc
done