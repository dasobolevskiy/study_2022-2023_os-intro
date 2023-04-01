---
## Front matter
title: "Лабораторная работа №8"
subtitle: "Модель конкуренции двух фирм"
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

Цель данной работы:

1. Построение графика изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1.
2. Построение графика изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2.

# Теоретическое введение

##Модель одной фирмы
Для построения модели конкуренции хотя бы двух фирм необходимо рассмотреть модель одной фирмы. Вначале рассмотрим модель фирмы, производящей продукт долговременного пользования, когда цена его определяется балансом спроса и предложения. Примем, что этот продукт занимает определенную нишу рынка и конкуренты в ней отсутствуют[1].
Обозначим:
N – число потребителей производимого продукта.
S– доходы потребителей данного продукта. Считаем, что доходы всех потребителей одинаковы. Это предположение справедливо, если речь идет об одной рыночной нише, т.е. производимый продукт ориентирован на определенный слой населения.
M – оборотные средства предприятия
τ – длительность производственного цикла
p – рыночная цена товара
p̃ – себестоимость продукта, то есть переменные издержки на производство единицы продукции.

##Конкуренция двух фирм
###Случай 1
Рассмотрим две фирмы, производящие взаимозаменяемые товары одинакового качества и находящиеся в одной рыночной нише. Последнее означает, что у потребителей в этой нише нет априорных предпочтений, и они приобретут тот или иной товар, не обращая внимания на знак фирмы[2].
В этом случае, на рынке устанавливается единая цена, которая определяется балансом суммарного предложения и спроса. Иными словами, в рамках нашей модели конкурентная борьба ведётся только рыночными методами. То есть, конкуренты могут влиять на противника путем изменения параметров своего производства: себестоимость, время цикла, но не могут прямо вмешиваться в ситуацию на рынке («назначать» цену или влиять на потребителей каким- либо иным способом.)
Уравнения динамики оборотных средств запишем в виде:
![](https://sun9-66.userapi.com/impg/DRQdTOqgfTIyIFlUS09uhHzX4Zv4Lct28GIojQ/ht02sjkh-Y0.jpg?size=880x188&quality=95&sign=cbec96fbe86d87587f74e0bc4b826c6e&type=album)

где использованы те же обозначения, а индексы 1 и 2 относятся к первой и второй фирме, соответственно. Величины N1 и N2 – числа потребителей, приобретших товар первой и второй фирмы.

###Случай 2
Рассмотрим модель, когда, помимо экономического фактора влияния (изменение себестоимости, производственного цикла, использование кредита и т.п.), используются еще и социально-психологические факторы – формирование общественного предпочтения одного товара другому, не зависимо от их качества и цены. В этом случае взаимодействие двух фирм будет зависеть друг от друга, соответственно коэффициент перед M1M2 будет отличаться[2].
Рассмотрим следующую модель:

![](https://sun9-67.userapi.com/impg/I_Mef2fEvcOcrP07cOppgR-WIMA7SXtluohZSQ/HIxOD-ayN60.jpg?size=880x188&quality=95&sign=b5051bf99d6d6de92cd04ccaf56b9f3d&type=album)

# Задание

![](https://sun9-76.userapi.com/impg/XV_SWOPI31QVnA_w6S1NvR6z0teDItZ4H6gFjQ/wXyjun9Mt88.jpg?size=795x540&quality=96&sign=f87664d40978cb0a9097c731e113666d&type=albumhttps://sun9-76.userapi.com/impg/XV_SWOPI31QVnA_w6S1NvR6z0teDItZ4H6gFjQ/wXyjun9Mt88.jpg?size=795x540&quality=96&sign=f87664d40978cb0a9097c731e113666d&type=album)
![](https://sun9-56.userapi.com/impg/2zrzEs_kRsBQoxt1LEK1-LKwmRCKNh2LmW_g1w/Co0PixBlytA.jpg?size=811x199&quality=96&sign=c10abe6d472a7f6e4c349c062ca8f913&type=albumhttps://sun9-56.userapi.com/impg/2zrzEs_kRsBQoxt1LEK1-LKwmRCKNh2LmW_g1w/Co0PixBlytA.jpg?size=811x199&quality=96&sign=c10abe6d472a7f6e4c349c062ca8f913&type=album)
!["Вариант 29"](https://sun9-6.userapi.com/impg/ZzsTm59sqaWE1gNHNcRjN3v666mTrOujEucTOg/afSgPh7Vut4.jpg?size=797x519&quality=96&sign=7bea19e928ce18387826ec4363932653&type=albumhttps://sun9-6.userapi.com/impg/ZzsTm59sqaWE1gNHNcRjN3v666mTrOujEucTOg/afSgPh7Vut4.jpg?size=797x519&quality=96&sign=7bea19e928ce18387826ec4363932653&type=album)

# Выполнение лабораторной работы

## Построение математической модели. Решение с помощью программ

## Julia

Первый случай:

```
using DifferentialEquations
using Plots

p_cr = 33
N = 83
q = 1
tau1 = 27
tau2 = 24
p1 = 11.3
p2 = 12.5

a1 = p_cr/(tau1*tau1*p1*p1*N*q)
a2 = p_cr/(tau2*tau2*p2*p2*N*q)
b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q)
c1 = (p_cr-p1)/(tau1*p1)
c2 = (p_cr-p2)/(tau2*p2)

function Fun(du, u, p, t)
    M1, M2 = u
    du[1] = u[1]-b/c1*u[1]*u[2]-a1/c1*u[1]*u[1]
    du[2] = c2/c1*u[2]-b/c1*u[1]*u[2]-a2/c1*u[2]*u[2]
end

v = [8.5, 9.1]
time = (0.0, 30.0)
prob = ODEProblem(Fun, v, time)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
    dpi = 300,
    legend =:topright)

plot!(
    plt,
    T,
    M1,
    label = "M1",
    color = :red)

plot!(
    plt,
    T,
    M2,
    label = "M2",
    color = :blue)
```

### Результаты работы кода на Julia

Получим график для первого случая (рис.1)

!["Рис.1 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1 на языке Julia"](https://sun9-41.userapi.com/impg/cqJXOVHzTYtnvgcvTKdzs_w2Uqd3kcl0ZcmwHw/kLh_nSDQY9c.jpg?size=1684x806&quality=95&sign=02a4f24f51e9037558449c1527232ba7&type=album)

## Julia

Второй случай:

```
using DifferentialEquations
using Plots

p_cr = 33
N = 83
q = 1
tau1 = 27
tau2 = 24
p1 = 11.3
p2 = 12.5

a1 = p_cr/(tau1*tau1*p1*p1*N*q)
a2 = p_cr/(tau2*tau2*p2*p2*N*q)
b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q)
c1 = (p_cr-p1)/(tau1*p1)
c2 = (p_cr-p2)/(tau2*p2)

function Fun(du, u, p, t)
    M1, M2 = u
    du[1] = u[1]-(b/c1+0.00019)*u[1]*u[2]-a1/c1*u[1]*u[1]
    du[2] = c2/c1*u[2]-b/c1*u[1]*u[2]-a2/c1*u[2]*u[2]
end

v = [8.5, 9.1]
time = (0.0, 30.0)
prob = ODEProblem(Fun, v, time)
sol = solve(prob, dtmax = 0.05)
M1 = [u[1] for u in sol.u]
M2 = [u[2] for u in sol.u]
T = [t for t in sol.t]

plt = plot(
    dpi = 300,
    legend =:topright)

plot!(
    plt,
    T,
    M1,
    label = "M1",
    color = :red)

plot!(
    plt,
    T,
    M2,
    label = "M2",
    color = :blue)
```

### Результаты работы кода на Julia

По аналогии с предыдущим построением получим график для второго случая (рис.2)

!["Рис.2 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2 на языке Julia"](https://sun1-86.userapi.com/impg/A49ZBMFwhqzRGd379buq8iUob3CWHS4XefMrJw/gqI81y4J5vY.jpg?size=1684x806&quality=95&sign=b4e198b03f32f0313c481f29e8516624&type=album)

## OpenModelica

Первый случай:

```
model lab8_1
Real M1;
Real M2;
Real p_cr = 33;
Real N = 83;
Real q = 1;
Real tau1 = 27;
Real tau2 = 24;
Real p1 = 11.3;
Real p2 = 12.5;
Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
Real c1 = (p_cr-p1)/(tau1*p1);
Real c2 = (p_cr-p2)/(tau2*p2);
initial equation
M1 = 8.5;
M2 = 9.1;
equation
der(M1) = M1-b/c1*M1*M2-a1/c1*M1*M1;
der(M2) = c2/c1*M2-b/c1*M1*M2-a2/c1*M2*M2;
end lab8_1;
```

### Результаты работы кода на OpenModelica

Получим график для первого случая (рис.3)

!["Рис.3 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1 на языке OpenModelica"](https://sun9-47.userapi.com/impg/V0zOZJWoiBpV0pklMRIbfF7RdwVVNPl8laclog/tMgINYBQId8.jpg?size=1684x806&quality=95&sign=e7c1e5096982fdd920c9caa7c17efb06&type=album)

## OpenModelica

Второй случай:

```
model lab8_2
Real M1;
Real M2;
Real p_cr = 33;
Real N = 83;
Real q = 1;
Real tau1 = 27;
Real tau2 = 24;
Real p1 = 11.3;
Real p2 = 12.5;
Real a1 = p_cr/(tau1*tau1*p1*p1*N*q);
Real a2 = p_cr/(tau2*tau2*p2*p2*N*q);
Real b = p_cr/(tau1*tau1*tau2*tau2*p1*p1*p2*p2*N*q);
Real c1 = (p_cr-p1)/(tau1*p1);
Real c2 = (p_cr-p2)/(tau2*p2);
initial equation
M1 = 8.5;
M2 = 9.1;
equation
der(M1) = M1-(b/c1+0.00019)*M1*M2-a1/c1*M1*M1;
der(M2) = c2/c1*M2-b/c1*M1*M2-a2/c1*M2*M2;

end lab8_2;
```

### Результаты работы кода на OpenModelica

По аналогии с предыдущим построением получим график для второго случая (рис.4)

!["Рис.4 График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2 на языке OpenModelica"](https://sun9-46.userapi.com/impg/O5O1L8UdCVJ5yGqQ8vtTvE_7iLBZkyF8ZDYBuQ/vFbicnxaG5I.jpg?size=1684x806&quality=95&sign=51600bf6485c3930dc6c31a5f90cc810&type=album)

# Выводы

В ходе проделанной работы были построены:

1. График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 1.
2. График изменения оборотных средств фирмы 1 и фирмы 2 без учета постоянных издержек и с веденной нормировкой для случая 2.
   На языке Julia реализация кожа объемнее, чем на языке OpenModelica.

# Список литературы {.unnumbered}

[1] ДИНАМИЧЕСКАЯ МОДЕЛЬ КОНКУРЕНЦИИ ДВУХ ФИРМ НА ОДНОРОДНОМ РЫНКЕ: https://natural-sciences.ru/ru/article/view?id=14730&ysclid=lfy5n3s35h687499253

[2] Руководство к лабоарторной работе: https://esystem.rudn.ru/pluginfile.php/1971672/mod_resource/content/2/Лабораторная%20работа%20№%207.pdf

