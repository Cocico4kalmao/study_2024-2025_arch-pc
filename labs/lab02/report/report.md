---
## Front matter
title: "Отчёт по лабораторной работе №2"
subtitle: "Дисциплина: Архитектура компьютера"
author: "Орлов Илья Сергеевич"

## Generic otions
lang: ru-RU
toc-title: "Содержание"

## Bibliography
bibliography: bib/cite.bib
csl: pandoc/csl/gost-r-7-0-5-2008-numeric.csl

## Pdf output format
toc: true # Table of contents
toc-depth: 2
lof: true # List of figures
lot: true # List of tables
fontsize: 12pt
linestretch: 1.5
papersize: a4
documentclass: scrreprt
## I18n polyglossia
polyglossia-lang:
  name: russian
  options:
	- spelling=modern
	- babelshorthands=true
polyglossia-otherlangs:
  name: english
## I18n babel
babel-lang: russian
babel-otherlangs: english
## Fonts
mainfont: IBM Plex Serif
romanfont: IBM Plex Serif
sansfont: IBM Plex Sans
monofont: IBM Plex Mono
mathfont: STIX Two Math
mainfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
romanfontoptions: Ligatures=Common,Ligatures=TeX,Scale=0.94
sansfontoptions: Ligatures=Common,Ligatures=TeX,Scale=MatchLowercase,Scale=0.94
monofontoptions: Scale=MatchLowercase,Scale=0.94,FakeStretch=0.9
mathfontoptions:
## Biblatex
biblatex: true
biblio-style: "gost-numeric"
biblatexoptions:
  - parentracker=true
  - backend=biber
  - hyperref=auto
  - language=auto
  - autolang=other*
  - citestyle=gost-numeric
## Pandoc-crossref LaTeX customization
figureTitle: "Рис."
tableTitle: "Таблица"
listingTitle: "Листинг"
lofTitle: "Список иллюстраций"
lotTitle: "Список таблиц"
lolTitle: "Листинги"
## Misc options
indent: true
header-includes:
  - \usepackage{indentfirst}
  - \usepackage{float} # keep figures where there are in the text
  - \floatplacement{figure}{H} # keep figures where there are in the text
---

# Цель работы

Целью работы является изучить идеологию и применение системы контроля
версий. Приобрести практические навыки по работе с системой git.

# Задание

На основе методических указаний провести работу с базовыми командами
системы контроля версий git, выучить применение команд для разных случаев
использования, настроить GitHub.

# Теоретическое введение

Системы контроля версий (Version Control System, VCS) применяются при
работе нескольких человек над одним проектом. Обычно основное дерево проекта
хранится в локальном или удалённом репозитории, к которому настроен доступ для
участников проекта. При внесении изменений в содержание проекта система контроля
версий позволяет их фиксировать, совмещать изменения, произведённые разными
участниками проекта, производить откат к любой более ранней версии проекта, если
это
требуется.
В
классических
системах
контроля
версий
используется
централизованная модель, предполагающая наличие единого репозитория для
хранения файлов. Выполнение большинства функций по управлению версиями
осуществляется специальным сервером. Участник проекта (пользователь) перед
началом работы посредством определённых команд получает нужную ему версию
файлов. После внесения изменений, пользователь размещает новую версию в
хранилище. При этом предыдущие версии не удаляются из центрального хранилища и
к ним можно вернуться в любой момент. Сервер может сохранять не полную версию
изменённых файлов, а производить так называемую дельта-компрессию — сохранять
только изменения между последовательными версиями, что позволяет уменьшить
объём хранимых данных. Системы контроля версий поддерживают возможность
отслеживания и разрешения конфликтов, которые могут возникнуть при работе
нескольких человек над одним файлом. Можно объединить (слить) изменения,
сделанные разными участниками (автоматически или вручную), вручную выбрать
нужную версию, отменить изменения вовсе или заблокировать файлы для изменения.
В зависимости от настроек блокировка не позволяет другим пользователям получить
рабочую копию или препятствует изменению рабочей копии файла средствами
файловой системы ОС, обеспечивая таким образом, привилегированный доступ
только одному пользователю, работающему с файлом.

# Выполнение лабораторной работы:

# Базовая настройка Git

Для начала я проведу предварительную конфигурацию Git, для этого открываю
терминал и ввожу команды.

Далее настраиваю параметры utf-8, имя начальной ветки, autocrlf и safecrlf. 

Далее создаю пару ssh ключей для интеграции с платформой GitHub. 

Далее я перехожу на сайт GitHub, авторизуюсь, перехожу в настройки аккаунта,
вставляю публичный ключ в предназначенном для этого поле. 

# Создание рабочего пространства и репозитория курса на основе шаблона

Рабочее
пространство
при
выполнении
лабораторных
работ
должно
придерживаться определённой структурной иерархии, для этого я создаю директорию
на своем рабочем компьютере. 

# Создание репозитория курса на основе шаблона

Создаю репозиторий на основе имеющего шаблона через
функционал клонирования интерфейса GitHub. 

Сгенерированный репозиторий на основе шаблона клонирую на свой рабочий
компьютер, для этого беру ссылку для клонирования через интерфейс GitHub и затем ввожу в терминале git clone. 

# Настройка каталога курса

В каталоге курса удаляю лишние файлы и формирую необходимые каталоги. 

Отправляю изменения на удаленный репозиторий.

# Задания для самостоятельный работы

Через терминал отправляю предыдущий отчет по лабораторной работе на свой
удаленный репозиторий в GitHub, затем проверяю изменения на самом
GitHub. 

Отправляю изменения на удаленный репозиторий.

Проверяю выполненные изменения на GitHub.
# Выводы

При выполнении данной лабораторной работы я изучил идеологию и
применение средств контроля версий, а также приобрел практические навыки по
работе с реализацией VSC git.

# Список литературы{.unnumbered}

1. [Лабораторная работа](https://esystem.rudn.ru/pluginfile.php/2089082/mod_resource/content/0/%D0%9B%
D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%
BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%
B0%20%E2%84%962.%20%D0%A1%D0%B8%D1%81%D1%82%D0%B5%D0%
BC%D0%B0%20%D0%BA%D0%BE%D0%BD%D1%82%D1%80%D0%BE%D0
%BB%D1%8F%20%D0%B2%D0%B5%D1%80%D1%81%D0%B8%D0%B9%20
Git.pdf)
2. [Курс на ТУИС](https://esystem.rudn.ru/mod/page/view.php?id=1030492)
3. [Методические указания](https://esystem.rudn.ru/mod/resource/view.php?id=1030495)
4. [Шаблон выполнения лабораторной работы](https://github.com/evdvorkina/study_2022-2023_arh-pc/tree/master)
