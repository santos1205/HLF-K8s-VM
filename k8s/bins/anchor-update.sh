#!/bin/sh

# Esse comando é usado para atualizar as configurações de um canal existente no Hyperledger Fabric.

# Pense em um canal como um grupo privado em uma rede blockchain, onde só alguns participantes podem entrar e ver as transações.
# O peer channel update serve para mudar as regras desse grupo, como:

# Adicionar novos membros

# Remover participantes

# Alterar permissões (quem pode fazer o quê)

# Partes do comando explicadas:
# peer channel update

# peer: Indica que você está usando o comando do Hyperledger Fabric para gerenciar um nó (peer).

# channel update: Significa que você quer atualizar as configurações de um canal.

# -f ../config/acme-peer-update.tx

# -f: Significa "file" (arquivo).

# ../config/acme-peer-update.tx: É o caminho para um arquivo de transação de atualização.

# Esse arquivo contém as novas regras que serão aplicadas ao canal.

# Geralmente, ele é gerado usando ferramentas como configtxgen.

# -c airlinechannel

# -c: Significa "channel" (canal).

# airlinechannel: É o nome do canal que será atualizado.

# -o $ORDERER_ADDRESS

# -o: Significa "orderer" (servidor que organiza as transações).

# $ORDERER_ADDRESS: É o endereço do servidor orderer (como orderer.example.com:7050).

# O $ indica que é uma variável, definida anteriormente no terminal.

# Como funciona na prática?
# Alguém (geralmente um administrador) prepara um arquivo .tx (transação) com as mudanças desejadas.

# Exemplo: Adicionar um novo peer da "ACME Corp" ao canal airlinechannel.

# O comando peer channel update envia essa atualização para o orderer.

# O orderer valida a atualização e, se tudo estiver correto, aplica as mudanças no canal.

# Todos os participantes do canal recebem a nova configuração.

peer channel update -f ../config/acme-peer-update.tx -c airlinechannel -o $ORDERER_ADDRESS

