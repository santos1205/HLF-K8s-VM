#!/bin/sh

# Esse comando busca (fetch) um bloco específico de um canal blockchain e salva esse bloco em um arquivo no seu computador.

# Partes do comando:
# Vamos decompor cada parte:

# peer channel fetch 0

# peer: É o programa cliente que fala com a rede blockchain

# channel fetch: Significa "buscar do canal"

# 0: Indica que queremos o bloco de número 0 (o bloco genesis, que é o primeiro bloco do canal)

# ../config/airlinechannel.block

# Este é o local onde o bloco será salvo

# ../config/ significa "uma pasta chamada 'config' no nível acima da pasta atual"

# airlinechannel.block é o nome do arquivo que será criado

# -o $ORDERER_ADDRESS

# -o significa "orderer" (o nó que organiza a criação de blocos)

# $ORDERER_ADDRESS é o endereço desse nó (normalmente algo como "orderer.example.com:7050")

# -c airlinechannel

# -c significa "canal"

# airlinechannel é o nome do canal de onde queremos buscar o bloco

# Analogia simples:
# Imagine que o canal blockchain é como um livro de registros (um ledger) em uma biblioteca. Esse comando é como:

# Pedir para o bibliotecário (peer)

# Buscar (fetch)

# A página de abertura do livro (página 0, que é o bloco genesis)

# Salvar uma cópia dessa página no seu computador (../config/airlinechannel.block)

# Sabendo que o bibliotecário principal está em determinado endereço ($ORDERER_ADDRESS)

# E que você quer o livro chamado "airlinechannel" (-c airlinechannel)

# Quando usar?
# Você usaria esse comando quando:

# Está se juntando a uma rede blockchain existente

# Precisa obter informações sobre como o canal foi configurado

# Quer verificar o bloco inicial do canal

peer channel fetch 0 ../config/airlinechannel.block -o $ORDERER_ADDRESS -c airlinechannel