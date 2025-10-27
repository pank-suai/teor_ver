#import "@preview/cetz:0.4.0"
#import "@preview/cetz-venn:0.1.4"

= Основные понятия

/ Случайное событие: заранее неизвестно произойдёт или нет.

Обозначения: $A,B,C$
```
Если событие не имеет под собой статистики, то оно не детерминированное
```

/ Достоверное событие ($Omega$): всегда происходит.
/ Невозможное событие ($nothing$): никогда не происходит.

/ Вероятность случайного события ($P(A)$): численная мера объективной
  возможности наступления данного события.




== Операции над событиями и их свойствами

```
Есть многие аналогии из дискретной математики, но в дискретке все
детерминировано (0 или 1)
```

/ Противоположное событие ($overline(A)$): состоит в том, что событие
  $A$ не произошло.


/ Произведение событий $A inter B (A dot B, A B)$: совместное наступление событий. Если $A inter B = nothing$, то события $A$ и $B$ называются
  несовместными.


/ Сумма событий ($A union B$): сумма события (хотя бы одно произошло).

/ Закон де Моргана: $overline(A or B) = \{"ни одно"\} = overline(A)
  inter overline(B)$, $overline(A inter B) = \{"хотя бы одно не
произошло"\} = overline(A) or overline(B)$

В диаграммах Венна:

#grid(columns: 2, cetz.canvas(
  {
    cetz-venn.venn2(
      name: "venn",
      ab-fill: gray, // Закрашиваем пересечение множеств A и B
    )
    import cetz.draw: *
    content("venn.a", $A$)
    content("venn.b", $B$)
    content("venn.ab", $A inter B$)
  },
  length: 2cm,
),cetz.canvas(
  {
    cetz-venn.venn2(
      name: "venn",
      a-fill: gray, // Закрашиваем только часть A
      b-fill: gray, // Закрашиваем только часть B
    )
    import cetz.draw: *
    content("venn.a", $A$)
    content("venn.b", $B$)
    content((0, -1.0), $A union B$)
    content((0, -1.3), [$A ∩ B = nothing$])
  },
  length: 2cm,
))

== Свойства противоположного события

+ $overline(overline(A)) = A$
+ $A inter overline(A) = nothing$ ($A$ и $overline(A)$ несовместны)
+ $A union overline(A) = Omega$ (произойдёт либо $A$, либо $overline(A)$)

== Знаки

Знаки $inter,union$ коммутативны, ассоциативны и дистрибутивны
относительно друг друга.

Приоритет: $inter, union$.

+ Коммутативность:

  $A union B = B union A$

  $A inter B = B inter A$

+ Ассоциативность:

  $A union B union C = (A union B) union C = A union (B union C)$

  $A inter B inter C = (A inter B) inter C = A inter (B inter C)$


+ $A_1 union A_2 union dots union A_n = limits(union)^n_(i = 1) A_i$

  $A_1 inter A_2 inter dots inter A_n = limits(inter)^n_(i = 1) A_i$


+ Дистрибутивность:

  $(A union B) inter C = A inter C union B inter C$

  $(A inter B) union C = (A union C) inter (B union C)$

Если при наступлении события $A$ наступает событие $B$, то говорят,
что событие $A$ влечёт наступление события $B$: $A subset.eq B$ или  $A subset B$.

== Разность событий

$A backslash B$ = {$A$ наступило, $B$ -- нет}

$A backslash B != B backslash A$

Симметрическая разность:

$ A Delta B = A backslash B union B backslash A = {"только " A "или только" B} $


== Операции поглощения

$ A union A dot B = A $

$ A inter (A union B) = A $

$
    overline(A) union (A inter B) = overline(A) union B
$

$
  overline(A) inter (A union B) = overline(A) inter B
$
3
== Операции с $nothing$ и $Omega$

- Объединение с невозможным событием не меняет исходного события:
  $ A union emptyset = A $
- Пересечение с невозможным событием всегда даёт невозможное событие:
  $ A inter emptyset = emptyset $ 

- Объединение с достоверным событием всегда даёт достоверное событие:
  $ A union Omega = Omega $ 
- Пересечение с достоверным событием не меняет исходного события:
  $ A inter Omega = A $

- Объединение события с его противоположностью даёт достоверное событие:
  $ A union overline(A) = Omega $ 
- Пересечение события с его противоположностью даёт невозможное событие (событие и его противоположность несовместны):
  $ A inter overline(A) = emptyset $


== Аксиомы вероятности


$
  O <= P(A) <= 1, forall "случайного события" A
$ <ax1>

$
  P(Omega) = 1
$ <ax2>

/ Аксиома 3: Для $forall$ двух несовместных событий $A$ и $B$ ($A B =
  nothing$) вероятность их суммы равно сумме вероятностей: $ cases(
    P (A
      union B) = P(A) + P(B),
    P(A dot B) = nothing
  ) $

== Вероятность противоположного события

т.к. $cases(
  A union overline(A) = Omega,
  A inter overline(A) = nothing
)$, то с учётом аксиомы @ax1 и @ax2,
получаем $P(A union overline(A)) = P(omega) => P(overline(A)) = 1 -
P(A)$

Из @ax2 $arrow$ если события $A_1, A_2, dots, A_n$ по парно
неизвестны, то $A_i inter A_j = nothing (forall i,j, i != j)$, то
$P(A_1 union A_2 union dots union A_n) = P(A_1) + P(A_2) + dots + P(A_n)$
