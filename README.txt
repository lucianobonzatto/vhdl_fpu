ALUNOS: Luciano Bonzatto Junior 
                 Hadryan Salles
DATA: 21/12/2022

DESCRIÇÃO:

https://github.com/lucianobonzatto/vhdl_fpu

Construção de uma fpu de 32 bits que pode ser acessada via socket utilizando FPGA que possui as quatro operações básicas soma, subtração, multiplicação e divisão. Para a fpu utilizamos uma biblioteca presente na opencores.org.

utiliza-se floats segundo a IEEE:	1bit de sinal
					8bits de expoente
					23bits de mantissa

Como interação, o server recebe uma string e envia para o NIOS que utiliza para formular os valores e a operação com isso, o NIOS envia para user hardware esses valores, salvando eles nos seus respectivos registradores e então le o resultado obtido e envia ele ao server.

ARQUIVOS:

tcpserver_fpu		-> server em python que a FPGA se conecta
DE2_NET		-> projeto do Quartus II versão 13
DE2_NET/vhdl	-> arquivos VHDL que fazem a conexão com o NIOS
DE2_NET/fpu		-> biblioteca utilizada para a execução da fpu de 32bits
DE2_NET/simulation	-> arquivos de simulação do multisim utilizados para testar a biblioteca
DE2_NET/software	-> workspace do eclipse onde esta o projeot do NIOS

COMO RODAR:

1 Utilize o Quartus II versão 13.0sp1
2 Vá na aba Files do Project Navigator e delete o arquivo system_0/synthesis/system_0.qip
3 Abre o Qsys em Tools->Qsys
4 Selecione o arquivo system_0.qsys e clique em Abrir
5 De OK ou Close no que aparecer
6 Va para aba Generation e clique em Generate
7 Feche o Qsys

8 No Project Navigator, aba Files, clique com o botão direito em Files->Add/Remove Files in Project
9 Clique no [...], entre em system_0/synthesis, mude o tipo de arquivo para todos, selecione o arquivo system_0.qip
10 Clique em Add-> Apply-> OK
11 Abra o Programmer, aperte Auto Detect e aperte Start, caso o Progress esteja verde, continue caso contrário verifique 	conexão da JTAG
12 Deixe aberto o Programmer e a janela "OpenCore Plus Status" e inicie o Eclipse em Tools -> Nios II Software Build Tools 	for Eclipse
13 No Workspace selecione SeuCaminhoAtéaPasta\DE2_NET\software
14 Agora existem 2 opções:
14.1 Se os projetos server1 e server1_bsp estão aparecendo e são expandíveis (pastinha cor amarela):
	14.1.1 Clique com o botão direito em cada projeto e clique em Clean Project
		14.1.2 Abra o arquivo iniche_init.c, dentro da função SSSInitialTask irá encontrar 2 linhas de código e fazer alterações:
			- sa.sin_port = htons(7777);
			- res = inet_pton(AF_INET, "192.168.1.110", &sa.sin_addr);
		Também atualize o IP no servidor (tcpserver_fpu)

		14.1.3 Vá em Project -> Build All
		14.1.4 Se tudo compilar sem erros, é possível fazer Botão direito em simple_socket -> Run As...->Nios II Hardware
		14.1.5 Se der algum erro na hora de rodar apenas, tente de novo
		14.1.6 Se rodar como deve, algo assim deve aparecer no Nios II Console:
			InterNiche Portable TCP/IP, v3.1 
			Copyright 1996-2008 by InterNiche Technologies. All rights reserved. 
			Your Ethernet MAC address is 00:07:ed:ff💿15
			prepped 1 interface, initializing...
			dm9ka_init
			Created "Inet main" task (Prio: 2)
			Created "clock tick" task (Prio: 3)
			mctest init called
			IP address of et1 : 10.3.2.175
			Acquired IP address via DHCP client for interface: et1
			IP address : 192.168.1.101
			Subnet Mask: 255.255.255.0
			Gateway    : 192.168.1.1

			Simple Socket Server starting up
			estou aqui
			Socket criado
		14.1.7 Se deu certo, precisa testar com um server agora. Primeiro pare o programa do Eclipse.
		14.1.8 Pegue o tcpserver.py (fazendo alterações de ip e porta dentro) fornecido e rode ele fazendo o comando python .\tcpserver.py na linha de comando no local que estiver o arquivo
		14.1.9 Rode novamente com Run As->Nios II Hardware
		14.1.10 Se o roteador não bloqueou nada, está pronto!


	14.2 Se os projetos server1 e server1_bsp estão aparecendo e NÃO são expandíveis (pastinha cor azul):
		14.2.1 Delete ambos com botão direito -> Delete (sem deletar do computador)
		14.2.2 Botão direito no Project Explorer->Import...->Nios II Software Build Tools Project-> Import Custom Makefile for Nios II Software Build Tools Project-> Next-> Browse...->
			Vá para a pasta do projeto DE2_NET/software/server1_bsp->OK/Abrir
Project name: server1_bsp
Faça a mesma coisa para o server1
		14.2.3 Retome a partir de 14.1.1