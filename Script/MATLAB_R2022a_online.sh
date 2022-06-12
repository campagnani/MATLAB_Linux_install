#!/bin/bash

set -e #Qualquer erro cancele o script

clear
echo "####################################################################################"
echo "##										##"
echo "##                    Bem vindo a instalação do MATLAB R2022a                     ##"
echo "##										##"
echo "####################################################################################"
echo ""
echo ""
echo "INSTRUÇÕES:"
echo ""
echo "Se por acaso você ler um formulário login/password/signin é porque o instalador tem acesso a internet."
echo "Nesse caso então no canto superior direito em 'Opções Avançadas' selecione o modo de configuração 'Eu tenho uma Chave de Instalação de Arquivo'"
echo "Se o acesso à Internet estiver ausente, o modo de configuração necessário será selecionado automaticamente e você não precisará selecionar manualmente"
echo "Quando você será solicitado a 'Entre com a chave do arquivo de instalação' entre com:"
echo ""
echo "50874-33247-14209-37962-45495-25133-28159-33348-18070-60881-29843-35694-31780-18077-36759-35464-51270-19436-54668-35284-27811-01134-26918-26782-54088"
echo ""
echo "Quando você será solicitado a 'Selecionar arquivo de licença', selecione o arquivo 'license_standalone.lic' que será baixado na pasta que esse instalador está sendo executado"
echo ""

echo "--> Baixando arquivo de licença"
echo ""
wget https://github.com/campagnani/MATLAB_Linux_install/raw/main/Crack/R2022a/license_standalone.lic
echo ""
echo "--> Montando ISO como CD-ROM em /mnt/cdrom/"
echo ""
sudo mount ./R2022a_Linux.iso /mnt/cdrom/
echo ""
echo "--> Executando Instalador como administrador"
echo ""
sudo /mnt/cdrom/install
echo ""
echo "--> Demontando ISO"
echo ""
sudo umount /mnt/cdrom/
echo ""
echo "--> Crackeando..."
echo ""
sudo wget -o /usr/local/MATLAB/R2022a/bin/glnxa64/matlab_startup_plugins/lmgrimpl/ https://github.com/campagnani/MATLAB_Linux_install/raw/main/Crack/R2022a/libmwlmgrimpl.so

clear
echo "--> Executando Instalador do UPDATE 1"
echo ""
sudo /usr/local/MATLAB/R2022a/bin/glnxa64/update_installer.sh -updatepackage ./R2022a_Update_1
echo ""
echo "--> Crackeando novamente..."
echo ""
sudo wget -o /usr/local/MATLAB/R2022a/bin/glnxa64/matlab_startup_plugins/lmgrimpl/ https://github.com/campagnani/MATLAB_Linux_install/raw/main/Crack/R2022a/libmwlmgrimpl.so

clear
echo "--> Executando Instalador do UPDATE 2"
echo ""
sudo /usr/local/MATLAB/R2022a/bin/glnxa64/update_installer.sh -updatepackage ./R2022a_Update_2
echo ""
echo "--> Crackeando pela última vez..."
echo ""
sudo wget -o /usr/local/MATLAB/R2022a/bin/glnxa64/matlab_startup_plugins/lmgrimpl/ https://github.com/campagnani/MATLAB_Linux_install/raw/main/Crack/R2022a/libmwlmgrimpl.so

clear
echo "--> Criando Link Simbólico"
echo ""
sudo ln -s /usr/local/MATLAB/R2022a/bin/matlab /usr/bin/
echo ""
echo "--> Baixando icone"
echo ""
sudo wget -o /usr/share/icons/ https://github.com/campagnani/MATLAB_Linux_install/raw/main/Atalho/matlab.png
echo ""
echo "--> Baixando atalho"
echo ""
sudo wget -o /usr/share/applications/matlab.desktop https://github.com/campagnani/MATLAB_Linux_install/raw/main/Atalho/matlab_r2022a.desktop

clear
echo "####################################################################################"
echo "##										##"
echo "##              Instalação do MATLAB R2022a finalizada com sucesso!               ##"
echo "##										##"
echo "####################################################################################"
echo ""

