#!/bin/bash

mkdir meus-repositorios-git
cd meus-repositorios-git
repositorios=$(curl -s https://api.github.com/users/DreJosh/repos | awk '/ssh_url/{print $2}' | se d  's/^"//g' | sed 's/",$//g')

# para cada repositorios na lista de repositorios 

for repositorio in $repositorios
do 
    git clone $repositorios
done
