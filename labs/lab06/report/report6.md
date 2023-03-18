---
## Front matter
title: "Лабораторная работа № 6"
subtitle: "Задача об эпидемии"
author: "Соболевский Денис Андреевич"

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
lot: false
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
mainfont: PT Serif
romanfont: PT Serif
sansfont: PT Sans
monofont: PT Mono
mainfontoptions: Ligatures=TeX
romanfontoptions: Ligatures=TeX
sansfontoptions: Ligatures=TeX,Scale=MatchLowercase
monofontoptions: Scale=MatchLowercase,Scale=0.9
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

Целью данной работы является построение модели эпидемии.

# Теоретическое введение

Рассмотрим простейшую модель эпидемии SIR [1]. Предположим, что некая
популяция, состоящая из N особей, (считаем, что популяция изолирована)
подразделяется на три группы. Первая группа - это восприимчивые к болезни, но
пока здоровые особи, обозначим их через S(t). Вторая группа – это число
инфицированных особей, которые также при этом являются распространителями
инфекции, обозначим их I(t). А третья группа, обозначающаяся через R(t) – это
здоровые особи с иммунитетом к болезни.
До того, как число заболевших не превышает критического значения I\*, считаем, что все больные изолированы и не заражают здоровых. Когда I(t) > I\*, тогда инфицирование способны заражать восприимчивых к болезни особей. [2]

# Задание

!["Вариант 9"](https://sun1-88.userapi.com/impg/mE77fBQ1xtm_XO4pn61kjBYajgyAYLvnIl-ONQ/5ozj1TU7tTs.jpg?size=934x462&quality=96&sign=f374dd2a297d63db23e5c614daec8992&type=albumhttps://sun1-88.userapi.com/impg/mE77fBQ1xtm_XO4pn61kjBYajgyAYLvnIl-ONQ/5ozj1TU7tTs.jpg?size=934x462&quality=96&sign=f374dd2a297d63db23e5c614daec8992&type=album)

# Выполнение лабораторной работы

## Построение математической модели. Решение с помощью программ

### Julia

Первый случай:

```
using Plots
using DifferentialEquations

N = 15500
I0 = 115
R0 = 15
S0 = N - I0 - R0
a = 0.01
b = 0.02

function ode_fn(du, u, p, t)
    S, I, R = u;
    du[1] = 0
    du[2] = -b*u[2]
    du[3] = b*u[2]
end

v0 = [S0, I0, R0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
S = [u[1] for u in sol.u]
I = [u[2] for u in sol.u]
R = [u[3] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
    dpi = 300,
    legend =:topright)

plot!(
    plt,
    T,
    S,
    label = "Восприимчивые к болезни",
    color = :red)

plot!(
    plt,
    T,
    I,
    label = "Заболевшие",
    color = :blue)

plot!(
    plt,
    T,
    R,
    label = "Особи с иммунитетом",
    color = :green)
```

### Результаты работы кода на Julia

Построим графики численности особей трех групп S, I, R для первого случая (рис.1)

!["Рис.1 Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные изолированы"](https://sun9-44.userapi.com/impg/33tKUl9glOECDl7iBlN43SsstYxpOQIP5plEEw/RfFGsQNSDnE.jpg?size=1494x864&quality=95&sign=01f6cb6e5aa962901c657912dd1eac02&type=album)

### Julia

Второй случай:

```
using Plots
using DifferentialEquations

N = 15500
I0 = 115
R0 = 15
S0 = N - I0 - R0
a = 0.01
b = 0.02

function ode_fn(du, u, p, t)
    S, I, R = u;
    du[1] = -a*u[1]
    du[2] = a*u[1]-b*u[2]
    du[3] = b*u[2]
end

v0 = [S0, I0, R0]
tspan = (0.0, 60.0)
prob = ODEProblem(ode_fn, v0, tspan)
sol = solve(prob, dtmax = 0.05)
S = [u[1] for u in sol.u]
I = [u[2] for u in sol.u]
R = [u[3] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
    dpi = 300,
    legend =:topright)

plot!(
    plt,
    T,
    S,
    label = "Восприимчивые к болезни",
    color = :red)

plot!(
    plt,
    T,
    I,
    label = "Заболевшие",
    color = :blue)

plot!(
    plt,
    T,
    R,
    label = "Особи с иммунитетом",
    color = :green)
```

### Результаты работы кода на Julia

По аналогии с предыдущим построением получим получим графики для второго случая (рис.2)

!["Рис.2 Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные могут заражать особей группы S"](https://sun9-64.userapi.com/impg/iaNJRAJcHjhwyEfw4-UC6c0W5twox3zsqXUZKw/7o7fZYVfa2s.jpg?size=1494x864&quality=95&sign=6a761a6aa6d47d8e33c4eb5858bfc3a3&type=album)

## OpenModelica

Первый случай:

```
model lab6_1
Real N = 15500;
Real I;
Real R;
Real S;
Real a = 0.01;
Real b = 0.02;
initial equation
I = 115;
R = 15;
S = N - I - R;
equation
der(S) = 0;
der(I) = -b*I;
der(R) = b*I;
end lab6_1;
```

Второй случай:

```
model lab6_2
Real N = 15500;
Real I;
Real R;
Real S;
Real a = 0.01;
Real b = 0.02;
initial equation
I = 115;
R = 15;
S = N - I - R;
equation
der(S) = -a*S;
der(I) = a*S-b*I;
der(R) = b*I;
end lab6_2;
```

### Результаты работы кода на OpenModelica

Построим графики численности особей трех групп S, I, R для первого случая (рис.3)

!["Рис.3 Графики численности особей трех групп S, I, R, построенные на OpenModelica, для случая, когда больные изолированы"](https://sun9-50.userapi.com/impg/cV-1gPnXs69FQ3-f9SM-SefEnbk8bQHXxTtlQQ/Ja6VGpCvbTI.jpg?size=1494x864&quality=95&sign=4c2b6f5c181d5f302f0ce236aa18d2bb&type=album)

По аналогии с предыдущим построением получим получим графики для второго случая (рис.4)

!["Рис.4 Графики численности особей трех групп S, I, R, построенные на OpenModelica, для случая, когда больные могут заражать особей группы S"](https://sun9-66.userapi.com/impg/7tS-6-ur-gK1_5Qtt17vWfk7LbOJpBE9GAUl0g/6sshDnHBcoI.jpg?size=1494x864&quality=95&sign=b6c51efe9806b8c775f0804cc25468d4&type=album)

# Выводы

В итоге проделанной работы мы построили графики зависимости численности особей трех групп S, I, R для случаев, когда больные изолированы и когда они могут заражать особей группы S, на языках Julia и OpenModelica. Построение модели эпидемии на языке OpenModelica занимает значительно меньше строк, чем аналогичное построение на Julia. Кроме того, построения на языке OpenModelica проводятся относительно значения времени t по умолчанию, что упрощает нашу работу.

# Список литературы {.unnumbered}

[1] Конструирование эпидемиологических моделей. Habr: https://habr.com/ru/post/551682/

[2] Руководство к лабоарторной работе: https://esystem.rudn.ru/pluginfile.php/1971664/mod_resource/content/2/%D0%9B%D0%B0%D0%B1%D0%BE%D1%80%D0%B0%D1%82%D0%BE%D1%80%D0%BD%D0%B0%D1%8F%20%D1%80%D0%B0%D0%B1%D0%BE%D1%82%D0%B0%20%E2%84%96%205.pdf
