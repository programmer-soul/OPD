#!/bin/bash

#Первое задание
echo -e 'Первый пункт:'
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
chmod 771 duosion4
chmod ugo+rwx glaceon0
chmod ugo+rwx kricketot8
chmod 061 metang2
chmod 404 rufflet1
chmod 640 teddiursa5
cd duosion4
chmod 375 persian
chmod 444 psyduck
chmod 551 piloswine
chmod 664 kadabra
chmod 771 staraptor
cd ..
cd glaceon0
chmod 700 quagsire
chmod 004 growlithe
chmod 044 ekans
cd ..
cd kricketot8
chmod 755 wingull
chmod 753 politoed
chmod 330 poliwrath
chmod 004 pikachu
chmod 335 pichu
cd ..
echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Третье задание
echo -e 'Третий пункт:'

#скопировать файл rufflet1 в директорию lab0/duosion4/persian
cp rufflet1 /home/studs/s408215/lab0/duosion4/persian/

#скопировать рекурсивно директорию glaceon0 в директорию lab0/duosion4/staraptor
chmod u+r glaceon0/ekans glaceon0/growlithe
cp -r glaceon0 /home/studs/s408215/lab0/duosion4/staraptor
chmod u-r glaceon0/ekans glaceon0/growlithe

#cоздать жесткую ссылку для файла teddiursa5 с именем lab0/glaceon0/ekansteddiursa
ln teddiursa5 /home/studs/s408215/lab0/glaceon0/ekansteddiursa

#скопировать содержимое файла rufflet1 в новый файл lab0/duosion4/kadabrarufflet
cat rufflet1 > /home/studs/s408215/lab0/glaceon0/kadabrarufflet

#объеденить содержимое файлов lab0/glaceon0/ekans, lab0/kricketot8/pikachu, в новый файл lab0/metang2_32
chmod u+r kricketot8/pikachu glaceon0/ekans
cat /home/studs/s408215/lab0/glaceon0/ekans /home/studs/s408215/lab0/kricketot8/pikachu > /home/studs/s408215/lab0/metang2_32
chmod u-r kricketot8/pikachu glaceon0/ekans

#создать символическую ссылку c именем Copy_30 на директорию glaceon0 в каталоге lab0
ln -s /home/studs/s408215/lab0/glaceon0 Copy_30

#cоздать символическую ссылку для файла metang2 с именем lab0/duosion4/kadabrametang
ln -s metang2 /home/studs/s408215/lab0/duosion4/kadabrametang

echo -e 'Выполнено!'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Четвертое задание
echo -e 'Четвертый пункт:'

cd ..
#Подсчитать количество символов содержимого файлов: psyduck, kadabra, growlithe, ekans, отсортировать вывод по уменьшению количества, подавить вывод ошибок доступа
find lab0 -type f \( -name "psyduck" -o -name "kadabra" -o -name "growlithe" -o -name "ekans"\) -exec wc -m {} + 2>/dev/null | sort -r

#Вывести два первых элемента рекурсивного списка имен и атрибутов файлов в директории lab0, список отсортировать по возрастанию количества жестких ссылок, добавить вывод ошибок доступа в стандартный поток вывода
find lab0 -type f -exec ls -l {} + | head -n 2 | sort -k2 2>&1

#Рекурсивно вывести содержимое файлов из директории lab0, имя которых начинается на 'k', строки отсортировать по имени a->z, ошибки доступа перенаправить в файл в директории /tmp
find lab0 -name "k*" 2>/tmp/errors.txt | sort

#Рекурсивно вывести содержимое файлов с номерами строк из директории lab0, имя которых начинается на 'p', строки отсортировать по имени a->z, добавить вывод ошибок доступа в стандартный поток вывода
find lab0 -type f -name "p*" 2>&1 -exec cat -n {} + | sort

#Вывести четыре последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0, заканчивающихся на символ 'u', список отсортировать по убыванию даты изменения записи о файле, ошибки доступа не подавлять и не перенаправлять
find lab0 -type f -name "*u" -exec ls -lt {} + | sort -k6

#Рекурсивно подсчитать количество символов содержимого файлов из директории lab0, имя которых начинается на 'k', результат записать в файл в директории /tmp, ошибки доступа перенаправить в файл в директории /tmp
find lab0 -type f -name 'k*' -exec cat {} + 2>>/tmp/errors.txt | wc -m > /tmp/result.txt

echo -e 'Выполнено!'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Пятое задание
echo -e 'Пятый пункт:'

cd lab0
rm teddiursa5
rm -f kricketot8/pikachu
chmod u+r duosion4/persian kricketot8/pichu kricketot8/poliwrath
find . -type l -name "Copy_*" -delete
chmod u-r duosion4/persian kricketot8/pichu kricketot8/poliwrath
find glaceon0 -type f -name "ekansteddiur*" -delete
chmod u+r duosion4/persian
rm -rf duosion4
rm -rf duosion4/staraptor

echo -e 'Выполнено!'
