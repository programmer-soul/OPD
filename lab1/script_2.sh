#!/bin/bash

#Третье задание
echo -e 'Третий пункт:'

cd lab0
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
cat glaceon0/ekans kricketot8/pikachu > metang2_32
chmod u-r kricketot8/pikachu glaceon0/ekans

#создать символическую ссылку c именем Copy_30 на директорию glaceon0 в каталоге lab0
ln -s /home/studs/s408215/lab0/glaceon0 Copy_30

#cоздать символическую ссылку для файла metang2 с именем lab0/duosion4/kadabrametang
cd duosion4
ln -s /home/studs/s408215/lab0/metang2 kadabrametang
cd ..
#доп.задание
ln -s /home/studs/s408215/lab0/duosion4/kadabrametang /tmp/foo


echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'

#Четвертое задание
echo -e 'Четвертый пункт:\n'

#Подсчитать количество символов содержимого файлов: psyduck, kadabra, growlithe, ekans, отсортировать вывод по уменьшению количества, подавить вывод ошибок доступа
#find lab0 -type f \( -name "psyduck" -o -name "kadabra" -o -name "growlithe" -o -name "ekans"\) -exec wc -m {} + 2>/dev/null | sort -r
wc -m duosion4/psyduck duosion4/kadabra glaceon0/growlithe glaceon0/ekans 2>/dev/null |sort -r

#Вывести два первых элемента рекурсивного списка имен и атрибутов файлов в директории lab0, список отсортировать по возрастанию количества жестких ссылок, добавить вывод ошибок доступа в стандартный поток вывода
find . -type f 2>&1 -exec ls -l {} +|sort -k2| head -n 2

#Рекурсивно вывести содержимое файлов из директории lab0, имя которых начинается на 'k', строки отсортировать по имени a->z, ошибки доступа перенаправить в файл в директории /tmp
find . -name "k*" 2>/tmp/errors.txt | sort

#Рекурсивно вывести содержимое файлов с номерами строк из директории lab0, имя которых начинается на 'p', строки отсортировать по имени a->z, добавить вывод ошибок доступа в стандартный поток вывода
find . -type f -name "p*" 2>&1 -exec cat -n {} + | sort

#Вывести четыре последних элемента рекурсивного списка имен и атрибутов файлов в директории lab0, заканчивающихся на символ 'u', список отсортировать по убыванию даты изменения записи о файле, ошибки доступа не подавлять и не перенаправлять
find . -type f -name "*u" -exec ls -ltc {} + | sort -rk6

#Рекурсивно подсчитать количество символов содержимого файлов из директории lab0, имя которых начинается на 'k', результат записать в файл в директории /tmp, ошибки доступа перенаправить в файл в директории /tmp
#find lab0 -type f -name 'k*' -exec cat {} + 2>>/tmp/errors.txt | wc -m > /tmp/result.txt
find . -type f -name 'k*' -exec wc -m {} + 2>>/tmp/errors.txt | head -n 1 > /tmp/result.txt

echo -e 'Выполнено!\n'
echo -e '---------------------------------------------------------------------------------------------------------\n'
