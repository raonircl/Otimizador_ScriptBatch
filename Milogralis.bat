ECHO OFF
cls
color 1f

echo by Raoni Cerqueira Lima
echo ####################################################################
echo #         Esta aplicacao foi feita para ajudar na melhoria         #
echo #         do desempenho da sua maquina.                            #
echo #         Aqui existem algumas funcoes de limpeza de disco,        #
echo #         verificacao de erros e correcoes, alteracoes de          # 
echo #         registro e melhorias para navegacao da internet.         #
echo #                                                                  #
echo # OBS: ESTA APLICACAO DEVERAR SER EXECUTADA EM MODO ADMINISTRADOR  #
echo #      E A PASTA "OTIMIZADOR" DEVERA ESTA NA AREA DE TRABALHO.     #
echo #                                                                  #
echo #                                                                  #
echo ####################################################################

ECHO.
ECHO.
ECHO.

     echo Bem vindo, %username%!
	 echo Nome do computador: %computername%
	 echo Data: %date% Hora: %time%	
     pause

:menu
cls

echo #########################################################
echo #                                                       #
echo #                                                       #
echo #                                                       #
echo #                                                       #
echo #            1 - Limpeza.                               # 
echo #            2 - Scandisk.                              #
echo #            3 - Desfragmentacao de disco.              #  
echo #            4 - Limpar memoria.                        # 
echo #            5 - Modificacoes de registro.              #
echo #            6 - Melhorias para internet.               #
echo #            7 - Remover prog.de inicializacao do win.  # 
echo #            8 - Sair.                                  #
echo #                                                       #
echo #                                                       #
echo #                                                       #
echo #########################################################

set /p op= Digite sua opcao:
     if %op% equ 1 goto 1
     if %op% equ 2 goto 2
     if %op% equ 3 goto 3
     if %op% equ 4 goto 4
     if %op% equ 5 goto 5
     if %op% equ 6 goto 6
     if %op% equ 7 goto 7
     if %op% equ 8 goto 8

rem ############################## [Limpeza de arquivos desnecessários] ##########################################################
:1
	
    echo ##########################################
    echo #   1-Limpeza de arquivos temporarios.   #
	echo #   2-Limpeza de navegadores.            #
	echo ##########################################
	set /p op= Digite sua opcao:
	    if %op% equ 1 goto lpc
        if %op% equ 1 goto lpn
		
	 :lpn
	 echo antes de realizar o processo, faca um backup dos seus favoritos.
	 pause
	 del /s /f /q C:\Users\%username%\AppData\Roaming\Mozilla\Firefox\Profiles\1vgfvxmi.default\*.*
	 goto manu
	 :lpc
	 
     del /s /f /q C:\windows\temp\*.*
     del /s /f /q C:\windows\prefetch\*.*
     del /s /f /q C:\Users\%username%\AppData\Roaming\microsoft\windows\recent\*.*
     del /s /f /q C:\Windows\Downloaded Program Files\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\Cache\*.*
	 Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\Cache
		del /s /f /q *.*
	 Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\Cache
		del /s /f /q *.*
	 Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\User\Default\AppCache
		del /s /f /q *.*
     Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\User\Default\AppCache
		del /s /f /q *.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\Temp\NVIDIA Corporation\NV_Cache\*.*
	 Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\Temp
		del /s /f /q *.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\MicrosoftEdge\Cookies\*.*
	 Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\Cookies
		del /s /f /q *.*
	 Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!002\MicrosoftEdge\Cookies
		del /s /f /q *.*
	 Cd C:\Users\%username%\AppData\Local\Packages\Microsoft.MicrosoftEdge_8wekyb3d8bbwe\AC\#!001\MicrosoftEdge\User\Default\DOMStore
		del /s /f /q *.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\65Q159S6\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\F2OOL6S6\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\F20AM9S6\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5\FGG6X5HX\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\3NM2HUM6\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\4KM48LDE\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\9K1XGMBT\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\40EPNE8B\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\D0NV2K1C\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\DBWARO02\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\QZ2MOAIF\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\DOMStore\ZE2UGG42\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\temp\*.*
     del /s /f /q C:\Users\%username%\AppData\Roaming\Microsoft\Windows\Recent\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Explorer\ThumbCacheToDelete\*.*
     del /s /f /q C:\Users\%username%\AppData\Local\Mozilla\Firefox\Profiles\8xwl9me1.default\cache2\entries\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Low\Content.IE5\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Virtualized\C\ProgramData\NVIDIA Corporation\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Feeds Cache\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\Recovery\High\Last Active\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Microsoft\Internet Explorer\Recovery\Last Active\*.*
	 del /s /f /q C:\Users\%username%\AppData\Roaming\Mozilla\Firefox\Profiles\1vgfvxmi.default\storage\temporary\https+++www.facebook.com\*.*
	 del /s /f /q C:\Users\%username%\AppData\Roaming\Mozilla\Firefox\Profiles\1vgfvxmi.default\storage\temporary\https+++mega.nz\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Mozilla\Firefox\Profiles\1vgfvxmi.default\cache2\entries\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Mozilla\Firefox\Profiles\1vgfvxmi.default\jumpListCache\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Mozilla\Firefox\Profiles\1vgfvxmi.default\safebrowsing\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Mozilla\Firefox\Profiles\1vgfvxmi.default\thumbnails\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Adobe\Acrobat\DC\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Temp\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\Cache\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\databases\https_tm.uol.com.br_0\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\databases\http_session.smartadtags.com_0\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\IndexedDB\*.*
	 del /s /f /q C:\Users\%username%\AppData\Local\Google\Chrome\User Data\Default\DownloadMetadata\*.*
	 del /s /f /q C:\ProgramData\Microsoft\Search\Data\Applications\Windows\*.*
				
		Cd C:\Users\%username%\AppData\Local\Microsoft\Windows\Temporary Internet Files\Content.IE5
	         del /s /f /q *.*
		echo.
		echo #########################################
		echo #          Limpeza de logs              #
		echo #########################################	
		echo on
		wevtutil cl application 
		wevtutil cl security
		wevtutil cl setup
		wevtutil cl system
		wevtutil cl forwardedevents
		echo off
		 
		 goto torrent1

    :torrent1	 
     echo.
     echo ############################################################################
     echo # Deseja deletar os arquivos temporarios do torrent?                       #
     echo # Caso esteja fazendo algum download ou não ultilize, ignore esse passo.   #
     echo ############################################################################
     set /p op=Deseja continuar? s/n:   
     if /I "%op%" == "S" goto torrent
     if /I "%op%" == "n" goto lixeira
     :torrent
     cd C:\Users\%username%\AppData\Roaming\uTorrent
     del /s /f /q *.torrent
	 del /s /f /q *.old
     goto lixeira
     :lixeira
     echo.
     echo ####################
     echo # Limpar lixeira.  #
     echo ####################
     rd /s c:\$Recycle.Bin
	 cleanmgr /sagerun:recycler
	 cleanmgr /d c /autoclean
	 cleanmgr /d d /autoclean
	 cleanmgr /d e /autoclean
	 cleanmgr /d f /autoclean
	 cleanmgr /sagerun:n /autoclean
     msg * A Limpeza de arquivos temporarios foi concluida!
	 goto menu
         
rem ############################### [Scandisk] #########################################################
:2
     echo        #################################################
     echo        #                                               #
     echo        #   Esta tarefa poderar levar alguns minutos.   #
     echo        #                                               #
     echo        ################################################# 
     echo.
        chkdsk.exe /f /r
     echo ################################################## 
     echo.
        sfc /scannow
     msg * Verificacao concluida!
     set /p op=voce deseja reiniciar? s/n:   
     if /I "%op%" == "S" goto reniciar
     if /I "%op%" == "n" goto fim   
     
rem ############################### [Desfregmentação de disco] #########################################################
:3   
     echo        #################################################
     echo        #                                               #
     echo        #   Esta tarefa podera levar alguns minutos.   #
     echo        #                                               #
     echo        ################################################# 
     
     :inicio
     set /p op=voce deseja realizar esse processo? s/n:   
     if /I "%op%" == "S" goto defrag
     if /I "%op%" == "n" goto fim 
     goto incio
     :defrag 
        defrag.exe /c /a /h /v
     pause              
     goto menu
     
     :fim
        goto menu
rem ################################# [Limpeza de memoria RAM] ####################################################### 
:4   
     echo on     
     %windir%\system32\rundll32.exe advapi32.dll,ProcessIdleTasks
	 %windir%\SysWOW64\rundll32.exe advapi32.dll,ProcessIdleTasks
     
     Rem cscript "C:\Users\%username%\Desktop\Otimizador\mem\ra.vbs" 
     Rem msg* 1
     Rem cscript "C:\Users\%username%\Desktop\Otimizador\mem\drainout1.vbs"
     Rem msg* 2
     Rem cscript "C:\Users\%username%\Desktop\Otimizador\mem\drainout2.vbs"
     Rem msg* 3
     Rem cscript "C:\Users\%username%\Desktop\Otimizador\mem\drainout3.vbs"
     Rem msg* 4
     Rem cscript "C:\Users\%username%\Desktop\Otimizador\mem\drainout4.vbs"
     Rem msg* 5
     Rem cscript "C:\Users\%username%\Desktop\Otimizador\mem\drainout5.vbs"
     Rem msg* 6
     echo off
     pause
     msg * Limpeza concluida!&goto menu               

rem ################################ [Otimização do windows 7] ########################################################          

:5  
     echo #########################################################################################
     echo #      Escolha um tipo de otimazacao                                                    #                
     echo #      1- Alta.(Efeitos visuais, Servicos,recursos do windows e otimizacao de registro) #
     echo #      2- Media.(Recursos, Servico e otimizacao de registro)                           #
     echo #      3- Basica.(Otimizacao de registro)                                              #
     echo #      4- Restaurar.                                                                    #  
     echo #########################################################################################
	 echo.
     set /p op= Escolha sua opcao:
     if %op% equ 1 goto alta
     if %op% equ 2 goto media
     if %op% equ 3 goto basica
     if %op% equ 4 goto restaurar   
rem ########################################################################################
    :alta

        echo                   [HOMEGRUOP]
        echo ###############################################
        sc config "upnphost" start= disabled
        sc config "Mcx2Svc" start= disabled
        sc config "SSDPSRV" start= disabled
        sc config "HomeGroupProvider" start= disabled
        echo.
        echo ###############################################
        echo #                    [AERO]                   #
        echo ###############################################
        sc config "UxSms" start= disabled
        sc config "Themes" start= disabled
        echo.
        echo ###############################################
        echo #           [IMPRESSORA, SCANNER, FAX]        #
        echo ###############################################
        sc config "Spooler" start= disabled
        sc config "StiSvc" start= disabled
        sc config "TapiSrv" start= disabled
        sc config "Fax" start= disabled
        echo.
        echo ###############################################
        echo #           [DIAGNOSTIGO DE ERRORS]           #  
        echo ###############################################
        sc config "DPS" start= disabled
        echo ###############################################
        echo #         [AMBIENTE DE TRABALHO REMOTO]       #
        echo ###############################################
        sc config "UmRdpService" start= disabled
        sc config "SessionEnv" start= disabled
        echo Esperar 2 segundos...
        choice /c sn /n /t 2 /d s
        sc config "TermService" start= disabled
        echo.
        echo ###############################################
        echo #   [ATUALIZACOES E PESQUISAS DO WINDOWS]     #
        echo ###############################################
        sc config "wuauserv" start= disabled
        sc config "WSearch" start= disabled
        sc config "WPDBusEnum" start= disabled
        sc config "BITS" start= disabled
        sc config "lmhosts" start= disabled
        echo ###############################################
        echo.
        echo ###############################################
        echo #          [ATUALIZACOES DE PROGRAMAS]        #
        echo ###############################################
        sc config "AdobeARMService" start= disabled
        sc config "gupdate" start= disabled
        sc config "gupdatem" start= disabled
        echo ###############################################
        echo.
        goto media
    
    :media
        echo            ##########[ RECURSOS ]###########
    
        echo  ###############"[ Cliente Telnet ]"###############
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:TelnetServer
        Dism.exe /Online /Disable-Feature /FeatureName:TelnetServer
        echo.
        echo.
        echo  ###############"[ Cliente Telnet ]"###############
        echo.   
        Dism.exe /Online /Get-FeatureInfo /FeatureName:TelnetClient
        Dism.exe /Online /Disable-Feature /FeatureName:TelnetClient
        echo.
        echo.
        echo  ###############"[ Plataforma De Gadgets do Windows ]"###############
        echo.   
        Dism.exe /Online /Get-FeatureInfo /FeatureName:WindowsGadgetPlatform
        Dism.exe /Online /Disable-Feature /FeatureName:WindowsGadgetPlatform
        echo.
        echo.
        echo ###############"[ Jogos ]"###############
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:InboxGames
        Dism.exe /Online /Disable-Feature /FeatureName:InboxGames
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:More Games
        Dism.exe /Online /Disable-Feature /FeatureName:More Games
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Solitaire
        Dism.exe /Online /Disable-Feature /FeatureName:Solitaire
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:SpiderSolitaire
        Dism.exe /Online /Disable-Feature /FeatureName:SpiderSolitaire
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Hearts
        Dism.exe /Online /Disable-Feature /FeatureName:Hearts
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Freecell	
        Dism.exe /Online /Disable-Feature /FeatureName:Freecell
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Minesweeper
        Dism.exe /Online /Disable-Feature /FeatureName:Minesweeper
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:PurblePlace
        Dism.exe /Online /Disable-Feature /FeatureName:PurblePlace
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Chess
        Dism.exe /Online /Disable-Feature /FeatureName:Chess
        echo ####################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Shanghai
        Dism.exe /Online /Disable-Feature /FeatureName:Shanghai
        echo.
        echo ###################"[ Servico de informacao da internet ]"####################
        echo.  
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Games
        Dism.exe /Online /Disable-Feature /FeatureName:Internet Games
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Checkers
        Dism.exe /Online /Disable-Feature /FeatureName:Internet Checkers
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Backgammon
        Dism.exe /Online /Disable-Feature /FeatureName:Internet Backgammon
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Spades
        Dism.exe /Online /Disable-Feature /FeatureName:Internet Spades
        echo.
        echo #################"[ Componetes do Tablet PC ]"#################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:TabletPCOC
        Dism.exe /Online /Disable-Feature /FeatureName:TabletPCOC
        echo.
        echo ##############"[ Servico de impressao e documentos ]"################
        echo.    
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-Features
        Dism.exe /Online /Disable-Feature /FeatureName:Printing-Foundation-Features
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-LPRPortMonitor
        Dism.exe /Online /Disable-Feature /FeatureName:Printing-Foundation-LPRPortMonitor
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-LPDPrintService
        Dism.exe /Online /Disable-Feature /FeatureName:Printing-Foundation-LPDPrintService
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-InternetPrinting-Client
        Dism.exe /Online /Disable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:FaxServicesClientPackage
        Dism.exe /Online /Disable-Feature /FeatureName:FaxServicesClientPackage
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:ScanManagementConsole
        Dism.exe /Online /Disable-Feature /FeatureName:ScanManagementConsole
        echo.
        echo #################"[ Cliente TFTP ]"##################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:TFTP
        Dism.exe /Online /Disable-Feature /FeatureName:TFTP
        echo.
        echo ###################"[ Servico XPS ]"##################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-XPSServices-Features
        Dism.exe /Online /Disable-Feature /FeatureName:Printing-XPSServices-Features
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Indexing-Service-Package
        Dism.exe /Online /Disable-Feature /FeatureName:Indexing-Service-Package
        echo ########################################################
        echo.
        Dism.exe /Online /Get-FeatureInfo /FeatureName:Xps-Foundation-Xps-Viewer
        Dism.exe /Online /Disable-Feature /FeatureName:Xps-Foundation-Xps-Viewer
        echo ########################################################
        echo. 
        echo ###################################################################################

        echo ################################################
        echo #                   [Serviços]                 #
        echo ################################################
        echo Agendador do Windows Media Center
        sc config "ehSched" start= disabled
        echo ################################################
        echo AdobeLM Service
        sc config "Adobelmsvc" start= disabled
        echo ################################################
        echo Adobe Acrobat Update Service
        sc config "AdobeARMservice" start= disabled
        echo ################################################
        echo Adobe Flash Player Update Service
        sc config "AdobeFlashPlayerUpdateSvc" start= disabled
        echo ################################################
        echo Auxiliar de IP
        sc config "iphlpsvc" start= disabled
        echo ################################################
        echo Arquivos offline
        sc config "CscService" start= disabled
        echo ################################################
        echo Cartão Inteligente
        sc config "SCardSvr" start= disabled
        echo ################################################
        echo Configuração da Área de Trabalho Remota
        sc config "SessionEnv" start= disabled
        echo ################################################
        echo Compartilhamento de Rede do Windows Media Player
        sc config "WMPNetworkSvc" start= disabled 
        echo ################################################
        echo Coordenador de transações distribuídas
        sc config "MSDTC" start= disabled 
        echo ################################################
        echo Cliente de rastreamento de link distribuido
        sc config "TrkWks" start= disabled
        echo ################################################
        echo Central de Segurança
        sc config "wscsvc" start= disabled 
        echo ################################################
        echo Criptografia de disco bitlocker
        sc config "BDESVC" start= disabled 
        echo ################################################
        echo Diretiva de Remoção de Cartão Inteligente
        sc config "SCPolicySvc" start= disabled 
        echo ################################################
        echo Diretiva de diagnóstico
        sc config "DPS" start= disabled 
        echo ################################################
        echo Enumerador de dispositivos portateis
        sc config "WPDBusEnum" start= disabled 
        echo ################################################
        echo Entrada de Table PC
        sc config "TabletInputService" start= disabled
        echo ################################################
        echo ICS (Compartilhamento de Conexão com a Internet)
        sc config "SharedAccess" start= disabled 
        echo ################################################
        echo Media Center Extender
        sc config "Mcx25vc" start= disabled 
        echo ################################################
        echo Microsoft Office Diagnostics Service
        sc config "odserv" start= disabled 
        echo ################################################
        echo Microsoft Office Groove Audit Service
        sc config "Microsoft Office Groove Audit Service" start= disabled 
        echo ################################################
        echo Propagação de Certificado
        sc config "CertPropSvc" start= disabled
        echo ################################################
        echo Parental Controls
        sc config "WPCSvc" start= disabled
        echo ################################################
        echo Relatório de erros do windows
        sc config "WerSvc" start= disabled 
        echo ################################################
        echo Receptor do Windows Media Center
        sc config "ehRecvr" start= disabled
        echo ################################################
        echo Registro remoto
        sc config "RemoteRegistry" start= disabled
        echo ################################################
        echo Roteamento e Acesso Remoto
        sc config "RemoteAccess" start= disabled 
        echo ################################################
        echo Serviço de Compartilhamento de Porta Net.Tcp
        sc config "NetTcpPortSharing" start= disabled 
        echo ################################################
        echo Serviço de Entrada de Tablet PC
        sc config "TabletInputService" start= disabled 
        echo ################################################
        echo Serviço de estado do ASP.NET
        sc config "aspnet_state" start= disabled 
        echo ################################################
        echo Serviço de Relatórios de Erro do Windows
        sc config "WerSvc" start= disabled 
        echo ################################################
        echo Serviço Agendador do Windows Media Center
        sc config "ehSched" start= disabled 
        echo ################################################
        echo Serviço do Media Center Extender
        sc config "Mcx2Svc" start= disabled 
        echo ################################################
        echo Serviço Enumerador de Dispositivos Portáteis
        sc config "WPDBusEnum" start= disabled 
        echo ################################################
        echo Serviços de Área de Trabalho Remota
        sc config "TermService" start= disabled 
        echo ################################################
        echo Serviço do Google Update
        sc config "gupdatem" start= disabled 
        echo ################################################
        echo Spooler de Impressão
        sc config "Spooler" start= disabled 
        echo ################################################
        echo Skype Updater
        sc config "SkypeUpdate" start= disabled 
        echo ################################################
        echo Steam Client Service
        sc config "Steam Client Service" start= disabled 
        echo ################################################
        echo TeamViewer 11
        sc config "TeamViewer" start= disabled 
        echo ################################################
        echo Telefonia
        sc config "TapiSrv" start= disabled 
        echo ################################################
        echo Windows CardSpace
        sc config "idsvc" start= disabled 
        echo ################################################
        echo Windows Search
        sc config "WSearch" start= disabled
        echo ################################################
		echo Agente de Conexão de Rede 
		sc config "NcbService" start= disabled 
		echo Assistente de aquisição de imagens do Windows (WIA) 
		sc config "stisvc" start= disabled 
		echo Assistente de Conexão de Conta da Microsoft 
		sc config "wlidsvc" start= disabled
		echo Cliente da Política de Grupo 
		sc config "gpsvc" start= disabled
		echo Cópia de Sombra de Volume 
		sc config "VSS" start= disabled
		echo Escuta do Grupo Doméstico 
		sc config "HomeGroupListener" start= disabled
		echo Extensões e Notificações da Impressora 
		sc config "PrintNotify" start= disabled
		echo Gerenciador de Autenticação Xbox Live 
		sc config "XblAuthManager" start= disabled
		echo Provedor de Cópia de Sombra de Software da Microsoft 
		sc config "swprv" start= disabled
		echo Salvar Jogos no Xbox Live 
		sc config "XblGameSave" start= disabled
		echo Serviço da Windows Store (WSService) 
		sc config "WSService" start= disabled
		echo Serviço de Biometria do Windows 
		sc config "WbioSrvc" start= disabled
		echo Serviço de Geolocalização 
		sc config "lfsvc" start= disabled
		echo Serviço de Hotspot Móvel do Windows 
		sc config "icssvc" start= disabled
		echo Serviço de Rede Xbox Live 
		sc config "XboxNetApiSvc" start= disabled
		echo Serviço de Roteador SMS do Microsoft Windows 
		sc config "SmsRouter" start= disabled
		echo Serviço de Suporte a Bluetooth 
		sc config "bthserv" start= disabled
		echo Serviço de Telefonia 
		sc config "PhoneSvc" start= disabled
		echo Serviço Mãos Livres Bluetooth 
		sc config "BthHFSrv" start= disabled
	rem	sc config "SysMain" start= disabled
	rem	sc config "NcbService" start= disabled
	rem	sc config "p2psvc" start= disabled
	rem	sc config "CscService" start= disabled
	rem	sc config "wlidsvc" start= disabled
	rem	sc config "SDRSVC" start= disabled
		sc config "SCardSvr" start= disabled
	rem	sc config "gpsvc" start= disabled
	rem	sc config "WebClient" start= disabled
	rem	sc config "SessionEnv" start= disabled
	rem	sc config "NgcCtnrSvc" start= disabled
	rem	sc config "WiaRpc" start= disabled
		sc config "Fax" start= disabled
	rem	sc config "XblAuthManager" start= disabled
	rem	sc config "NgcSvc" start= disabled
	rem	sc config "RmSvc" start= disabled
	rem	sc config "EntAppSvc" start= disabled
	rem	sc config "icssvc" start= disabled
	rem	sc config "irmon" start= disabled start= disabled

        goto basica
     
     :basica
     regedit "C:\Users\%username%\Desktop\Otimizador\reg\config.reg"
     REG ADD "HKLM\SOFTWARE\MICROSOFT\Dfrg\BootOptimizeFunction" /v Enable /t REG_SZ /d Y /f
     REG ADD "HKLM\SOFTWARE\MICROSOFT\Dfrg\BootOptimizeFunction" /v OptimizeComplete /t REG_SZ /d Yes /f
     REG ADD "HKLM\SOFTWARE\MICROSOFT\Windows\CurrentVersion\Explorer\VolumeCaches\Compress old files" /f
     msg * Otimizacao Concluida!&goto menu2
     :menu2
     echo     #################################################
     echo     #  É necessario que o computador seja reniciado # 
     echo     #  para que as novas configuracoes sejam ativas.#
     echo     #################################################
     set /p op=voce deseja reiniciar? s/n:   
     if /I "%op%" == "S" goto reniciar
     if /I "%op%" == "n" goto fim       

rem ############################# [Otimizaçao de internet] ############################################################    
:6
    echo on
         netsh int tcp show global

         netsh int tcp set global dca=enabled

         netsh int tcp set global congestionprovider=ctcp

         netsh int tcp set global ecncapability=enabled

         netsh int tcp set global timestamps=disabled
         
         netsh int tcp set global autotuninglevel=disabled
         
         netsh int tcp set global rss=enabled
         
         netsh int tcp set heuristics disabled

         ipconfig /flushdns
     
     echo off 
     regedit "C:\Users\%username%\Desktop\Otimizador\reg\int.reg"
     msg * Otimizacao Concluida!&goto menu     

rem ############################ [Remover programas que iniciam com o windows] ##########################################
:7
  
  echo.  
    REG DELETE HKCU\SOFTWARE\Microsoft\Windows\CurrentVersion\Run /va 
  pause
  echo  ######################################################
  echo  #                  Concluido!                        #
  echo  ######################################################
  goto menu


 rem ########################## [Finalização do programa] ##################################
:8
     echo        ##############################################################
     echo        #            "Obrigado por usar esta aplicacao!"             #
     echo        #             Desenvolvida por: Raoni cerqueira lima         #
     echo        #                                                            #
     echo        ##############################################################
     :inicio
     set /p op=Deseja reiniciar? s/n:   
     if /I "%op%" == "S" goto reniciar
     if /I "%op%" == "n" goto ffim 
     msg * Operacao concluida!
     goto incio
     
    :reniciar
         
          shutdown -r -c "O computador sera reniciado em 10 segundos. " -t "10"
     
     :ffim
          exit
rem ########################################################################################
    :restaurar
 
    echo Agendador do Windows Media Center
    sc config "ehSched" start= auto

    echo AdobeLM Service
    sc config "Adobelmsvc" start= auto

    echo Adobe Acrobat Update Service
    sc config "AdobeARMservice" start= auto

    echo Adobe Flash Player Update Service
    sc config "AdobeFlashPlayerUpdateSvc" start= auto

    echo Auxiliar de IP
    sc config "iphlpsvc" start= auto

    echo Arquivos offline
    sc config "CscService" start= auto

    echo Cartão Inteligente
    sc config "SCardSvr" start= auto

    echo Configuração da Área de Trabalho Remota
    sc config "SessionEnv" start= auto

    echo Compartilhamento de Rede do Windows Media Player
    sc config "WMPNetworkSvc" start= auto

    echo Coordenador de transações distribuídas
    sc config "MSDTC" start= auto

    echo Cliente de rastreamento de link distribuido
    sc config "TrkWks" start= auto

    echo Central de Segurança
    sc config "wscsvc" start= auto

    echo Criptografia de disco bitlocker
    sc config "BDESVC" start= auto

    echo Diretiva de Remoção de Cartão Inteligente
    sc config "SCPolicySvc" start= auto

    echo Diretiva de diagnóstico
    sc config "DPS" start= auto

    echo Enumerador de dispositivos portateis
    sc config "WPDBusEnum" start= auto

    echo Entrada de Table PC
    sc config "TabletInputService" start= disabled

    echo ICS (Compartilhamento de Conexão com a Internet)
    sc config "SharedAccess" start= auto

    echo Media Center Extender
    sc config "Mcx25vc" start= auto

    echo Microsoft Office Diagnostics Service
    sc config "odserv" start= disabled 

    echo Microsoft Office Groove Audit Service
    sc config "Microsoft Office Groove Audit Service" start= auto

    echo Propagação de Certificado
    sc config "CertPropSvc" start= auto

    echo Parental Controls
    sc config "WPCSvc" start= auto

    echo Relatório de erros do windows
    sc config "WerSvc" start= auto

    echo Receptor do Windows Media Center
    sc config "ehRecvr" start= auto

    echo Registro remoto
    sc config "RemoteRegistry" start= auto

    echo Roteamento e Acesso Remoto
    sc config "RemoteAccess" start= auto

    echo Serviço de Compartilhamento de Porta Net.Tcp
    sc config "NetTcpPortSharing" start= auto

    echo Serviço de Entrada de Tablet PC
    sc config "TabletInputService" start= auto

    echo Serviço de estado do ASP.NET
    sc config "aspnet_state" start= auto

    echo Serviço de Relatórios de Erro do Windows
    sc config "WerSvc" start= auto

    echo Serviço Agendador do Windows Media Center
    sc config "ehSched" start= auto

    echo Serviço do Media Center Extender
    sc config "Mcx2Svc" start= auto

    echo Serviço Enumerador de Dispositivos Portáteis
    sc config "WPDBusEnum" start= auto

    echo Serviços de Área de Trabalho Remota
    sc config "TermService" start= auto

    echo Serviço do Google Update
    sc config "gupdatem" start= auto

    echo Spooler de Impressão
    sc config "Spooler" start= auto

    echo Skype Updater
    sc config "SkypeUpdate" start= auto

    echo Steam Client Service
    sc config "Steam Client Service" start= auto

    echo TeamViewer 11
    sc config "TeamViewer" start= auto

    echo Telefonia
    sc config "TapiSrv" start= auto

    echo Windows CardSpace
    sc config "idsvc" start= auto

    echo Windows Search
    sc config "WSearch" start= auto
    
    echo HOMEGRUOP
    sc config "upnphost" start= auto
    sc start "Mcx2Svc" start= auto
    sc config "SSDPSRV" start= auto
    sc config "HomeGroupProvider" start= auto

    echo AERO 
    sc config "UxSms" start= auto
    sc config "Themes" start= auto

    echo IMPRESSORA E SCANNER
    sc config "Spooler" start= auto
    sc config "StiSvc" start= auto
    sc config "TapiSrv" start= auto

    echo DIAGNOSTICO DE ERRORS
    sc config "DPS" start= auto

    echo AMBIENTE DE TRABALHO REMOTO
    rem (cliente e servidor)
    sc config "SessionEnv" start= auto
    sc config "TermService" start= auto
    sc config "UmRdpService" start= auto

    echo ATUALIZACOES E PESQUISAS
    sc config "wuauserv" start= auto
    sc config "WSearch" start= auto
    sc config "WPDBusEnum" start= auto
    sc config "BITS" start= auto
    sc config "lmhosts" start= auto

    echo ATUALIZACOES DE PROGRAMAS
    sc config "AdobeARMService" start= auto
    sc config "gupdate" start= auto

    echo recursos
    echo  "Cliente Telnet"
    echo.
    Dism.exe /Online /Get-FeatureInfo /FeatureName:TelnetServer
    Dism.exe /Online /Enable-Feature /FeatureName:TelnetServer
    echo.
    echo  "Cliente Telnet"
    echo.   
    Dism.exe /Online /Get-FeatureInfo /FeatureName:TelnetClient
    Dism.exe /Online /Enable-Feature /FeatureName:TelnetClient
    echo.
    echo  "Plataforma De Gadgets do Windows"
    echo.   
    Dism.exe /Online /Get-FeatureInfo /FeatureName:WindowsGadgetPlatform
    Dism.exe /Online /Enable-Feature /FeatureName:WindowsGadgetPlatform
    echo.
    echo  "Jogos"
    echo.
    Dism.exe /Online /Get-FeatureInfo /FeatureName:InboxGames
    Dism.exe /Online /Enable-Feature /FeatureName:InboxGames
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:More Games
    Dism.exe /Online /Enable-Feature /FeatureName:More Games
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Solitaire
    Dism.exe /Online /Enable-Feature /FeatureName:Solitaire
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:SpiderSolitaire
    Dism.exe /Online /Enable-Feature /FeatureName:SpiderSolitaire
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Hearts
    Dism.exe /Online /Enable-Feature /FeatureName:Hearts
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Freecell	
    Dism.exe /Online /Enable-Feature /FeatureName:Freecell
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Minesweeper
    Dism.exe /Online /Enable-Feature /FeatureName:Minesweeper
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:PurblePlace
    Dism.exe /Online /Enable-Feature /FeatureName:PurblePlace
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Chess
    Dism.exe /Online /Enable-Feature /FeatureName:Chess
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Shanghai
    Dism.exe /Online /Enable-Feature /FeatureName:Shanghai
    echo.
    echo  "Servico de informacao da internet"
    echo.  
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Games
    Dism.exe /Online /Enable-Feature /FeatureName:Internet Games
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Checkers
    Dism.exe /Online /Enable-Feature /FeatureName:Internet Checkers
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Backgammon
    Dism.exe /Online /Enable-Feature /FeatureName:Internet Backgammon
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Internet Spades
    Dism.exe /Online /Enable-Feature /FeatureName:Internet Spades
    echo.
    echo    "Componetes do Tablet PC"
    echo.
    Dism.exe /Online /Get-FeatureInfo /FeatureName:TabletPCOC
    Dism.exe /Online /Disable-Feature /FeatureName:TabletPCOC
    echo.
    echo    "Servico de impressao e documentos"
    echo.    
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-Features
    Dism.exe /Online /Enable-Feature /FeatureName:Printing-Foundation-Features
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-LPRPortMonitor
    Dism.exe /Online /Enable-Feature /FeatureName:Printing-Foundation-LPRPortMonitor
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-LPDPrintService
    Dism.exe /Online /Enable-Feature /FeatureName:Printing-Foundation-LPDPrintService
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-Foundation-InternetPrinting-Client
    Dism.exe /Online /Enable-Feature /FeatureName:Printing-Foundation-InternetPrinting-Client
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:FaxServicesClientPackage
    Dism.exe /Online /Enable-Feature /FeatureName:FaxServicesClientPackage
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:ScanManagementConsole
    Dism.exe /Online /Enable-Feature /FeatureName:ScanManagementConsole
    echo.
    echo     "Cliente TFTP"
    echo.
    Dism.exe /Online /Get-FeatureInfo /FeatureName:TFTP
    Dism.exe /Online /Enable-Feature /FeatureName:TFTP
    echo.
    echo     "Servico XPS"
    echo.
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Printing-XPSServices-Features
    Dism.exe /Online /Enable-Feature /FeatureName:Printing-XPSServices-Features
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Indexing-Service-Package
    Dism.exe /Online /Enable-Feature /FeatureName:Indexing-Service-Package
    echo
    Dism.exe /Online /Get-FeatureInfo /FeatureName:Xps-Foundation-Xps-Viewer
    Dism.exe /Online /Enable-Feature /FeatureName:Xps-Foundation-Xps-Viewer


    msg * Restaucao completa!&goto manu

rem ########################################################################################