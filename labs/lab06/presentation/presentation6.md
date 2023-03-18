---
## Front matter
lang: ru-RU
title: Лабораторная работа № 6
author:
  - Соболевский Денис Андреевич
group:
  - НФИбд-02-20, 1032201668
date: 2023, Москва

## i18n babel
babel-lang: russian
babel-otherlangs: english

## Formatting pdf
toc: false
toc-title: Содержание
slide_level: 2
aspectratio: 169
section-titles: true
theme: metropolis
header-includes:
 - \metroset{progressbar=frametitle,sectionpage=progressbar,numbering=fraction}
 - '\makeatletter'
 - '\beamer@ignorenonframefalse'
 - '\makeatother'
---


## Цели

Целью данной работы является построение модели эпидемии.

# Задание

!["Вариант 9"](https://sun9-2.userapi.com/impg/mE77fBQ1xtm_XO4pn61kjBYajgyAYLvnIl-ONQ/5ozj1TU7tTs.jpg?size=934x462&quality=96&sign=f374dd2a297d63db23e5c614daec8992&type=album)


## Ход работы

Опишем начальные значения согласно варианту 9 на языке Julia.

```
using Plots
using DifferentialEquations

N = 15500
I0 = 115
R0 = 15
S0 = N - I0 - R0
a = 0.01
b = 0.02
```

## Ход работы

Опишем соответсвующую систему дифференциальных уравнений для первого случая, когда больные изолированы и ее решение.
```

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
```


## Ход работы

Построим графики численности особей трех групп S, I, R.
```

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
## Ход работы
### Результаты работы кода на Julia

Построим графики численности особей трех групп S, I, R для первого случая (рис.1)


!["Рис.1 Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные изолированы"](https://sun9-44.userapi.com/impg/33tKUl9glOECDl7iBlN43SsstYxpOQIP5plEEw/RfFGsQNSDnE.jpg?size=1494x864&quality=95&sign=01f6cb6e5aa962901c657912dd1eac02&type=album)

## Ход работы

Изменим систему дифференциальных уравнений для второго случая, когда зараженные могут инфицировать особей из группы S.
```

function ode_fn(du, u, p, t)
    S, I, R = u;
    du[1] = -a*u[1]
    du[2] = a*u[1]-b*u[2]
    du[3] = b*u[2]
end
```

## Ход работы

### Результаты работы кода на Julia

По аналогии с предыдущим построением получим получим графики для второго случая (рис.2)


!["Рис.2 Графики численности особей трех групп S, I, R, построенные на Julia, для случая, когда больные могут заражать особей группы S"](https://sun9-64.userapi.com/impg/iaNJRAJcHjhwyEfw4-UC6c0W5twox3zsqXUZKw/7o7fZYVfa2s.jpg?size=1494x864&quality=95&sign=6a761a6aa6d47d8e33c4eb5858bfc3a3&type=album)

## Ход работы

Построим модель для первого случая на языке OpenModelica.

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
## Ход работы

### Результаты работы кода на OpenModelica

Построим графики численности особей трех групп S, I, R для первого случая (рис.3)


!["Рис.3 Графики численности особей трех групп S, I, R, построенные на OpenModelica, для случая, когда больные изолированы"](https://sun9-50.userapi.com/impg/cV-1gPnXs69FQ3-f9SM-SefEnbk8bQHXxTtlQQ/Ja6VGpCvbTI.jpg?size=1494x864&quality=95&sign=4c2b6f5c181d5f302f0ce236aa18d2bb&type=album)

## Ход работы

Для второго случая, когда зараженные могут инфицировать особей из группы S, изменим систему дифференциальных уравнений.

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

## Ход работы

### Результаты работы кода на OpenModelica

По аналогии с предыдущим построением получим получим графики для второго случая (рис.4)


!["Рис.4 Графики численности особей трех групп S, I, R, построенные на OpenModelica, для случая, когда больные могут заражать особей группы S"](https://sun9-66.userapi.com/impg/7tS-6-ur-gK1_5Qtt17vWfk7LbOJpBE9GAUl0g/6sshDnHBcoI.jpg?size=1494x864&quality=95&sign=b6c51efe9806b8c775f0804cc25468d4&type=album)

## Результаты

В итоге проделанной работы мы построили графики зависимости численности особей трех групп S, I, R для случаев, когда больные изолированы и когда они могут заражать особей группы S, на языках Julia и OpenModelica. Построение модели эпидемии на языке OpenModelica занимает значительно меньше строк, чем аналогичное построение на Julia. Кроме того, построения на языке OpenModelica проводятся относительно значения времени t по умолчанию, что упрощает нашу работу.
