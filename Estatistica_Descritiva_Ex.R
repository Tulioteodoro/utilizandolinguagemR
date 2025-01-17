#Exerc�cio 2.2 - T�pico 2.2.1 
# Considere o conjunto de dados 10, -4, 5, 7, 1, 3, 9.

#a. obtenha o rol

x <- c(10,-4,5,7,1,3,9)
sort(x)

#b. indique e interprete x(4)

x[4]


#Exerc�cio 
#   2.3 Utilizando a fun��o sort, encontre o rol das colunas filhos e
#  altura dispon�veis em http://filipezabala.com/data/hospital.txt.

hosp <- read.table('http://filipezabala.com/data/hospital.txt', head = T)

#dim(hosp)
attach(hosp, warn = F)          # Deixo as colunas de 'hosp' dispon�veis
#(tab <- table(filhos))          # Frequ�ncia (simples/absoluta)

#prop.table(tab)       # tabela de propor��es da tableta tab, por isso
                      # ela foi gerada anteriormente.

#cumsum(tab)         #Frequ�ncia acumulada.

#cumsum(rev(tab))     #Frequ�ncia acumulada inversa.

a <- hosp$altura
table(a)
pretty(nclass.Sturges(altura))    ## Valores 'bonitos' para o n�mero de classes
hist(altura)$breaks       # Quebras de valores gerados com a fun��o 'hist'

(f <- hist(altura)$counts)     #Frequ�ncia das classes






# M�todo Sturges para c�lculo de (h) amplitude e (k) quantidade de classes
# N�o acompanha t�o bem o crescimento do n�mero de amostras. > 200 nota-se
# a diferen�a em compara��o aos outros dois m�todos.

n <- length(altura)               # n=100, n�mero de dados a serem tabulados
A <- diff(range(altura))          # Amplitude (dos dados, n�o da classe!)
ceiling(1 + log2(n))              # Pela Equa��o (2.3), usando log2
(kSt <- nclass.Sturges(altura))   # Pela fun��o 'nclass.Sturges'




# 2. Scott (Scott 1979) incorpora s , o desvio padr�o amostral ao 
# c�lculo da amplitude do intervalo.

n <- length(altura)                   # n=100, n�mero de observa��es a serem tabuladas
s <- sd(altura)                       # s=0.045268559, desvio padr�o amostral
A <- diff(range(altura))              # Amplitude (dos dados, n�o da classe!)
(hSc <- 3.5*s/n^(1/3))                # Pela Equa��o (2.4)


ceiling(A/hSc)                        # k sugerido por Scott, Equa��o (2.5)
(kSc <- nclass.scott(altura))         # k obtido pela fun��o 'nclass.scott'






# 2.3.1 - m�nimo e m�ximo

attach(read.table('http://www.filipezabala.com/data/hospital.txt', head=T), warn=F)
min(altura)     # M�nimo
max(altura)


#2.3.2 Media

x <- c(186,402,191,20,7,124)      # Vetor de dados brutos
mean(x)                           # Aplica as Equa��es (2.8) e (2.9). Veja ?mean


# 2.3.5 Moda
library(pracma)     #Pacote pracma possui a fun��o Mode que entrega a moda
dat <- c(1,2,2,3,3,4,5,6,3)
Mode(dat)


#2.3.6 Separatrizes

z <- c(10, -4, 11, 12, 1, 5, 15)
(sort(z))
median(z)


#fun��o quantile
# Apresenta nove m�todos para obten��o de separatrizes


hosp <- read.table('http://www.filipezabala.com/data/hospital.txt', header = T)
options(digits = 3)                                 # Para melhorar a apresenta��o
quantile(hosp$altura, probs = seq(0, 1, 1/2))       # Mediana


quantile(hosp$altura, probs = seq(0, 1, 1/3), digits = 3)       # Tercis

quantile(hosp$altura, probs = seq(0, 1, 1/4))       # Quartis

quantile(hosp$altura, probs = seq(0, 1, 1/10))      # Decis



# 2.4 - Medidas de Dispers�o ( ou Variabilidade)

# 2.4.1 - Amplitude

temp <- c(6,4,9,20,7,12)
max(temp)-min(temp)
#ou
(A <- range(temp))  # a fun��o 'range' retorna o m�nimo e o m�ximo

diff(A)       # a fun��o 'diff' calcula a diferen�a



#2.4.2 - Vari�ncia

#Universal
(var.p <- var(c(186,402,191,20,7,124))*(5/6))  # vari�ncia amostral*(1/fator de corre��o)

#Amostral

(var.a <- var(c(186,402,191,20,7,124)))     # 'var' calcula a vari�ncia amostral







