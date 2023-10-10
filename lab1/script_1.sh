#!/bin/bash

#Первое задание
echo -e 'Первый пункт:\n'
mkdir lab0
cd lab0
mkdir duosion4
mkdir glaceon0
mkdir kricketot8
echo -e 'Способности \nUnbreakable Mind Mold Clear Body Lightningrod' > metang2
echo -e 'Развитые \nспособности Hustle' > rufflet1
echo 'Тип диеты Omnivore'  > teddiursa5
cd duosion4
mkdir persian
mkdir piloswine
mkdir staraptor
echo  'Тип диеты Herbivore' > psyduck
echo -e 'weight=124.6 height=51.0 atk=4 \ndef=3' > kadabra
cd ..
cd glaceon0
mkdir quagsire
echo  'Развитые способности Justified' > growlithe
echo -e 'Тип диеты \nCarnivore' > ekans
cd ..
cd kricketot8
mkdir wingull
mkdir politoed
mkdir poliwrath
mkdir pichu
echo 'Живет Forest Grassland Urban' > pikachu
cd ..
echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Второе задание
echo -e 'Второй пункт:'
chmod ug=rwx,o=x duosion4
chmod ugo=rwx glaceon0
chmod ugo=rwx kricketot8
chmod u=\,g=rw,o=x metang2
chmod uo=r,g= rufflet1
chmod u=rw,g=r,o= teddiursa5
cd duosion4
chmod u=wx,g=rwx,o=rx persian
chmod ugo=r psyduck
chmod ug=rx,o=x piloswine
chmod ug=rw,o=r kadabra
chmod ug=rwx,o=x staraptor
cd ..
cd glaceon0
chmod u=rwx,go= quagsire
chmod ug=\,o=r growlithe
chmod u=\,go=r ekans
cd ..
cd kricketot8
chmod u=rwx,go=rx wingull
chmod u=rwx,g=rx,o=wx politoed
chmod ug=wx,o= poliwrath
chmod ug=\,o=r pikachu
chmod ug=wx,o=rx pichu
cd ..
echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'
