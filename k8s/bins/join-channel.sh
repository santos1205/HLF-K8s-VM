#!/bin/sh

# O que esse comando faz?
# Esse comando é usado em redes blockchain (especificamente Hyperledger Fabric) para adicionar um computador (peer) a um canal já existente.

# Pense como se fosse:

# Um grupo do WhatsApp (o canal) já existe

# Você quer adicionar seu celular (o peer) a esse grupo

# Esse comando é como escanear o QR code para entrar no grupo

# Partes do comando explicadas:
# peer channel join

# peer: É o programa que está sendo executado (seu "nó" na rede)

# channel join: Significa "juntar-se a um canal"

# -b ../config/airlinechannel.block

# -b: Significa "block" (bloco)

# ../config/airlinechannel.block: É o caminho para um arquivo especial que contém todas as informações sobre o canal (como a lista de participantes e regras)

# Pense nesse arquivo como o "convite" ou "código de acesso" ao canal

# -o $ORDERER_ADDRESS

# -o: Significa "orderer" (organizador)

# $ORDERER_ADDRESS: É o endereço do servidor principal que coordena a rede (como o administrador do grupo)

# O $ antes do nome significa que é uma variável - normalmente isso está configurado antes no terminal

# Como funciona na prática:
# Seu computador pega o arquivo airlinechannel.block (que alguém já criou antes)

# Envia uma solicitação para o servidor principal (ORDERER_ADDRESS)

# Se tudo estiver correto, seu computador é adicionado ao canal "airlinechannel"

# A partir daí, seu computador pode ver e participar de todas as transações nesse canal

# Analogia simples:
# Imagine que você quer entrar em um clube exclusivo:

# airlinechannel.block é seu convite impresso

# ORDERER_ADDRESS é o porteiro que verifica seu convite

# peer channel join é você mostrando o convite ao porteiro para entrar

# Você precisará ter:

# O arquivo .block no local correto (geralmente fornecido por quem criou o canal)

# O endereço do orderer configurado corretamente

# As permissões necessárias para entrar nesse canal

# Espero que isso ajude! Se tiver mais dúvidas ou quiser um exemplo mais concreto, é só perguntar.


peer channel join   -b ../config/airlinechannel.block -o $ORDERER_ADDRESS

