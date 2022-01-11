#### EXERCÍCIOS DE FIXAÇÃO PARA O APRENDIZADO PÁG 37 ########

#### 1 - Crie três vetores x,y e z e uma matriz quadrada
#### com esses vetores em colunas:

x = c(1,2,2)
y = c(0.5,1,1)
z = c(0.5,1,1)

m = data.frame(x,y,z)
View(m)

## 2 Cálcule a média e mediana de x:

#média
mean(x)

#mediana
median(x)


## 3 Calcule a correlação entre x e seu 
##  vetor de soma acumulada

cumsum(x)

## 4 Obtenha as dimensões da matriz M.
dim(m)
View(m)


## 5 Obtenha os autovalores e autovetores da matriz M.

eigen(m)

## 6 Obtenha o piso e o teto do valor 8.799.

floor(8.799) ?????

## 7 Arredonde o valor 8.799 para uma casa decimal.

round(8.799, 1)

## 8 Encontre as raízes do polinômio x^2 - 9, retornando
#  as raízes reais.

polyroot(x)

## 9 Retorne as diferenças entre os elementos consecutivos
##  do vetor x.

setdiff(x) ????

## 10 Obtenha o vetor de somas acumuladas do vetor z,
##  o vetor do produto acumulado do vetor y e o vetor do valor
## máximo acumulado do vetor x.

cumsum(z)
sumprod(y)
cummax(x)

  
  
  
## 11 Obtenha o desvio-padrão e a variância de x.

sd(x)
var(x)


## 12 Crie a matriz H e obtenha a média dos elementos de cada linha usando
## a função apply(H, i=2, mean).

