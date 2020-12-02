#!/bin/bash

 

echo "
                                 
                                                  #                             
                                                     %/(                        
    #(                                                 &//%                     
       &*/&                                              #//*.                  
          #*//&                                           **///@                
            ***///&                                         **///&              
              .**///(*.                                      **///(*            
                &***////**                                    ***////           
                 .***//////*.                                 %***////(         
                  .****//////(#                                ***/////%        
                   &*****///////*.                             &***//////       
                   /*****///////(/*,                            ****//////      
                   &*****////////((/*                           ****//////(     
                   *****//////////((((/                        @*****//////@    
                  (***///////////////((/&                     /*****///////*    
                 *////////////////////&//*                 %********////////%   
                     .(****///////////(((//.               **/////////////(/*   
                         ,****///////(((((//#               %**//////////((@*.  
                            (**////////(((//                 #***//////(((////  
                             **////////((///                 *****/////((/*/    
                            #*//////////(//#                 ,****///(/**       
                          (///////////////*                  ***/////*          
                               &/(////////*               &////////*&           
                                   @//////*.               &//////*             
                             #////#&#(/////%%%              (////*              
                            &(/////////&(//*%////(/////////(%%//*/              
                          //////////////@///*&(//////////////////@              
                        (///////////////////////////////////////////            
                      ,(/////////////////////////////////////////////@          
                     /////////////////////////////////////////////////%         
                     ///////////////////////////%@@@@@/(/////////@  %#(         
                    //////////////////////////@     @((&////////%   (@/         
                   ,/////////////////////////%((   @@@,@////////@(%@%@#         
                   &//////,........///////////@(#**,*  @/////////@,,(@/         
                   (//..(.............*/////////&@@@@/////////*.,//////%        
                   *.....*,....../.......////////////////...............        
                   #....,/  ,,,,,%......,.......,,.....................         
                   .....,     /,,,......,,,,,........................           
                    &..(*         %.....,%,,,,,,,................,.             
                    /#&,           .....,#%#,,,,,,,,,,,,,,,*&&                  
                                    /...(*               &@%@&#                 
 


                                     #%#&@, "


     echo "
     

███████████████████████████████████████████████████████████████████████████████████████████████
█─▄▄▄▄█▄─▄█─▄▄▄▄█─▄─▄─█▄─▄▄─█▄─▀█▀─▄██▀▄─████─▄▄─█▄─▄▄─█▄─▄▄─█▄─▄▄▀██▀▄─██─▄─▄─█▄─▄█▄─█─▄█─▄▄─█
█▄▄▄▄─██─██▄▄▄▄─███─████─▄█▀██─█▄█─███─▀─████─██─██─▄▄▄██─▄█▀██─▄─▄██─▀─████─████─███▄▀▄██─██─█
▀▄▄▄▄▄▀▄▄▄▀▄▄▄▄▄▀▀▄▄▄▀▀▄▄▄▄▄▀▄▄▄▀▄▄▄▀▄▄▀▄▄▀▀▀▄▄▄▄▀▄▄▄▀▀▀▄▄▄▄▄▀▄▄▀▄▄▀▄▄▀▄▄▀▀▄▄▄▀▀▄▄▄▀▀▀▄▀▀▀▄▄▄▄▀
████████████████████████████
█▄─▄▄─█─▄▄─█─▄▄▄▄█▄─▄█▄─▀─▄█
██─▄▄▄█─██─█▄▄▄▄─██─███▀─▀██
▀▄▄▄▀▀▀▄▄▄▄▀▄▄▄▄▄▀▄▄▄▀▄▄█▄▄▀     "


     








# funcino que muestra el menu principal

function _menuPrincipal()

{

    echo "  
╭━━━┳━━━┳━━━┳━━━┳━━┳━━━┳╮╱╱╭━━━┳━━━╮
┃╭━╮┃╭━╮┃╭━╮┃╭━╮┣┫┣┫╭━╮┃┃╱╱┃╭━━┫╭━╮┃
┃╰━╯┃┃╱┃┃╰━╯┃┃╱╰╯┃┃┃┃╱┃┃┃╱╱┃╰━━┫╰━━╮
┃╭━━┫╰━╯┃╭╮╭┫┃╱╭╮┃┃┃╰━╯┃┃╱╭┫╭━━┻━━╮┃
┃┃╱╱┃╭━╮┃┃┃╰┫╰━╯┣┫┣┫╭━╮┃╰━╯┃╰━━┫╰━╯┃
╰╯╱╱╰╯╱╰┻╯╰━┻━━━┻━━┻╯╱╰┻━━━┻━━━┻━━━╯  "

    echo

    echo "1) parcial1"

    echo "2) parcial2"

    echo "3) parcial3 "

    echo "4) Salir"

    echo

    echo -n "Indica una opcion: "

}

 

# funcion que muestra el primer submenu

function _submenu1()

{

    echo "-----------------------------------------------"

    echo

    echo "1) parcial1-bandith"

    echo "2) parcial1-changecmd"

    echo "3) parcial1 practicas"

    echo "4) Salir"

    echo

    echo -n "Indica una opcion: "

}

 

# funcion que muestra el segundo submenu

function _submenu2()

{

    echo "-----------------------------------------------"

    echo

    echo "1) parcia2-webminal"

    echo "2) parcial2-opensuse"

    echo "3) Salir"

    echo

    echo -n "Indica una opcion: "

}

#funcion que muestra el tercer submenu 

function _submenu3()

{

    echo "-----------------------------------------------"

    echo

    echo "1) parcia3-hackerank"

    echo "2) parcial3-proyectofinal"

    echo "3) Salir"

    echo

    echo -n "Indica una opcion: "

}

 

# establecemos un valor por defecto

opc=0

 

# bucle hasta que no se pulse la opcion 4 del primer menu

until [ $opc -eq 4 ]

do

    case $opc in

        1)

            # iniciamos el primer submenu

            opc1=0

            until [ $opc1 -eq 4 ]

            do

                case $opc1 in

                    1)

                        echo "parcial 1 bandith1"
                        cat /home/cintya/Documentos/parcial1/bandith.txt
                        _submenu1

                        ;;

                    2)

                        echo "parcial1 changecmd2"
                        cat /home/cintya/Documentos/parcial1/changecmd.sh 
                        _submenu1

                        ;;
                    
                    3)

                        echo "parcial1 practica"
                        cat /home/cintya/Documentos/parcial1/practica.txt

                        _submenu1

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

            # iniciamos el segundo submenu

            opc2=0

            until [ $opc2 -eq 3 ]

            do

                case $opc2 in

                    1)

                        echo "parcial 2 webminal 1"
                      cat /home/cintya//Documentos/parcial2/practica-webminal.sh
                        _submenu2

                        ;;

                    2)

                        echo "parcial2 opensuse  2"
                        cat /home/cintya/Documentos/proyectos/CIS_SUSE_Linux_Enterprise_15_Benchmark.sh

                        _submenu2

                        ;;

                    *)

                        _submenu2

                        ;;

                esac

                read opc2

            done

            _menuPrincipal

            ;;
#iniciamos el tercer submenu 
 
3)

            # iniciamos el segundo submenu

            opc3=0

            until [ $opc3 -eq 3 ]

            do

                case $opc3 in

                    1)

                        echo "parcia3-hackerank 1"
                      cat /home/cintya//Documentos/parcial2/practica-webminal.sh
                        _submenu3

                        ;;

                    2)

                        echo "parcial3 proyectofinal"
                        cat /home/cintya/Documentos/proyectos/CIS_SUSE_Linux_Enterprise_15_Benchmark.sh

                        _submenu3

                        ;;

                    *)

                        _submenu3

                        ;;

                esac

                read opc3

            done

            _menuPrincipal

            ;;

 

        *)

            _menuPrincipal

            ;;

    esac

 

    # esperamos solicitando una nueva opción de menu

    read opc

done