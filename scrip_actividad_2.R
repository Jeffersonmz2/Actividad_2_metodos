set.seed(123)

#Problema 1: Estimación de la probabilidad y la media

# a. Cálculo de probabilidad teórica:
# x = 3
xes3 <- dpois(3,5)

n=1000

muestra <- rpois(n, lambda = 5)
# x=3
# 2. Calcular la frecuencia absoluta para X=3
frecuencia_absoluta <- sum(muestra == 3)
frecuencia_relativa <- frecuencia_absoluta / n

#Compara e interpreta el resultado frente a la probabilidad teórica.

(frecuencia_relativa - xes3)


#C. Análisis de la variabilidad entre muestras:

#Genera 100 muestras aleatorias de tamaño n=1,000.
#Calcula la frecuencia relativa para X=3 en cada muestra.
#Construye un gráfico de dispersión:

#Inicializar un vector vacío para guardar las frecuencias relativas
frecuencias_relativas <- c()

# Generar 100 muestras y calcular la frecuencia relativa para cada una
for (i in 1:100) {
  # Generar una muestra aleatoria de tamaño 1000 con lambda = 5
  muestra <- rpois(1000, lambda = 5)
  
  # Calcular la frecuencia de X=3
  frecuencia_x_3 <- sum(muestra == 3)
  
  # Calcular la frecuencia relativa y guardarla
  frecuencia_relativa_x_3 <- frecuencia_x_3 / 1000
  frecuencias_relativas <- c(frecuencias_relativas, frecuencia_relativa_x_3)
}

simulaciones <- 1:100
datos_grafico <- data.frame(Simulacion = simulaciones, Frecuencia = frecuencias_relativas)





