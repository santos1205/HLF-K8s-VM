#!/bin/sh

# Esse comando cria um novo canal chamado airlinechannel usando as regras definidas no arquivo airlinechannel.tx. Ele gera um bloco inicial (airlinechannel.block) e envia a solicitação para um servidor central (orderer) aprovar a criação.

# peer channel create

# peer: É um comando do Hyperledger Fabric que representa um "nó participante" da rede.

# channel create: Indica que queremos criar um novo canal.

# -c airlinechannel

# -c significa "channel" (canal).

# airlinechannel é o nome do canal que está sendo criado (poderia ser qualquer outro nome, como meucanal).

# -f ../config/airlinechannel.tx

# -f significa "file" (arquivo).

# ../config/airlinechannel.tx é o caminho para um arquivo de configuração (geralmente criado antes) que define quem pode participar do canal, políticas de acesso, etc.

# --outputBlock ../config/airlinechannel.block

# --outputBlock indica onde será salvo o bloco genesis (o primeiro bloco do canal).

# ../config/airlinechannel.block é o arquivo que guardará esse bloco inicial.

# -o $ORDERER_ADDRESS

# -o significa "orderer" (o servidor que organiza a criação do canal).

# $ORDERER_ADDRESS é o endereço do servidor orderer (ex: orderer.example.com:7050).


peer channel create -c airlinechannel -f ../config/airlinechannel.tx --outputBlock ../config/airlinechannel.block -o $ORDERER_ADDRESS
