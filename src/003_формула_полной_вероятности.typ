= Формула полной вероятности. Формула Байеса

Пусть событие $A$ может произойти только вместе с другими событиями (гипотезами) $H_1, H_2, ..., H_n$, причём:
$
    cases(
    union^n_(i=1) H_i = Omega,
    H_i inter H_k = nothing,
    i != k, i,k = overline((1,n))
    ) => sum^n_(i = 1) P(H_i) = 1
$

$
    A = A dot Omega = A (union^n_(i=1) H_i) = union^n_(i=1) (A H_i)
$

Формула полной вероятности:

$
    P(A) = sum^n_(i = 1) p (A dot H_i) = sum^n_(i = 1) P(A backslash H_i) dot P(H_i)
$


$
    min_i = P(A backslash H_i) <= P(A) <= max_i P(A backslash H_i)
$

если гипотезы равновероятны, то:

$
    P(H_i) = 1 / n => P(A) = 1/n sum^n_(i = 1) P(A backslash H_i)
$


== Формула Байеса


$P(H_k)$ -- априорные (до опыт) вероятности гипотез
Найти $P(H_k backslash A)$ -- апостериорные (после опыта)

$
    P(H_k dot A) = P(A dot H_k) => P(H_k backslash A) P(A) = P(A backslash H_k)P(A) \ =>
    P(H_k backslash A) = (P(A backslash H_k) P(H_k))/(P(A)) = \ (P(A backslash H_k) dot P(H_k))/(sum^n_(i=1) P(A/H_i) P(H_i))
$



