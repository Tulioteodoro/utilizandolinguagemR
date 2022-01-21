#Exercício 2.2 - Tópico 2.2.1 
# Considere o conjunto de dados 10, -4, 5, 7, 1, 3, 9.

#a. obtenha o rol

x <- c(10,-4,5,7,1,3,9)
sort(x)

#b. indique e interprete x(4)

x[4]


#Exercício 
#   2.3 Utilizando a função sort, encontre o rol das colunas filhos e
#  altura disponíveis em http://filipezabala.com/data/hospital.txt.

hosp <- read.table('http://filipezabala.com/data/hospital.txt', head = T)

#dim(hosp)
attach(hosp, warn = F)          # Deixo as colunas de 'hosp' disponíveis
#(tab <- table(filhos))          # Frequência (simples/absoluta)

#prop.table(tab)       # tabela de proporções da tableta tab, por isso
                      # ela foi gerada anteriormente.

#cumsum(tab)         #Frequência acumulada.

#cumsum(rev(tab))     #Frequência acumulada inversa.

a <- hosp$altura
table(a)
pretty(nclass.Sturges(altura))    ## Valores 'bonitos' para o número de classes
hist(altura)$breaks       # Quebras de valores gerados com a função 'hist'

(f <- hist(altura)$counts)     #Frequência das classes






# Método Sturges para cálculo de (h) amplitude e (k) quantidade de classes
# Não acompanha tão bem o crescimento do número de amostras. > 200 nota-se
# a diferença em comparação aos outros dois métodos.

n <- length(altura)               # n=100, número de dados a serem tabulados
A <- diff(range(altura))          # Amplitude (dos dados, não da classe!)
ceiling(1 + log2(n))              # Pela Equação (2.3), usando log2
(kSt <- nclass.Sturges(altura))   # Pela função 'nclass.Sturges'




# 2. Scott (Scott 1979) incorpora s , o desvio padrão amostral ao 
# cálculo da amplitude do intervalo.

n <- length(altura)                   # n=100, número de observações a serem tabuladas
s <- sd(altura)                       # s=0.045268559, desvio padrão amostral
A <- diff(range(altura))              # Amplitude (dos dados, não da classe!)
(hSc <- 3.5*s/n^(1/3))                # Pela Equação (2.4)


ceiling(A/hSc)                        # k sugerido por Scott, Equação (2.5)
(kSc <- nclass.scott(altura))         # k obtido pela função 'nclass.scott'






# 2.3.1 - mínimo e máximo

attach(read.table('http://www.filipezabala.com/data/hospital.txt', head=T), warn=F)
min(altura)     # Mínimo
max(altura)


#2.3.2 Media

x <- c(186,402,191,20,7,124)      # Vetor de dados brutos
mean(x)                           # Aplica as Equações (2.8) e (2.9). Veja ?mean


# 2.3.5 Moda
library(pracma)     #Pacote pracma possui a função Mode que entrega a moda
dat <- c(1,2,2,3,3,4,5,6,3)
Mode(dat)


#2.3.6 Separatrizes

z <- c(10, -4, 11, 12, 1, 5, 15)
(sort(z))
median(z)


#função quantile
# Apresenta nove métodos para obtenção de separatrizes


hosp <- read.table('http://www.filipezabala.com/data/hospital.txt', header = T)
options(digits = 3)                                 # Para melhorar a apresentação
quantile(hosp$altura, probs = seq(0, 1, 1/2))       # Mediana


quantile(hosp$altura, probs = seq(0, 1, 1/3), digits = 3)       # Tercis

quantile(hosp$altura, probs = seq(0, 1, 1/4))       # Quartis

quantile(hosp$altura, probs = seq(0, 1, 1/10))      # Decis



# 2.4 - Medidas de Dispersão ( ou Variabilidade)

# 2.4.1 - Amplitude

temp <- c(6,4,9,20,7,12)
max(temp)-min(temp)
#ou
(A <- range(temp))  # a função 'range' retorna o mínimo e o máximo

diff(A)       # a função 'diff' calcula a diferença



#2.4.2 - Variância

#Universal
(var.p <- var(c(186,402,191,20,7,124))*(5/6))  # variância amostral*(1/fator de correção)

#Amostral

(var.a <- var(c(186,402,191,20,7,124)))     # 'var' calcula a variância amostral







