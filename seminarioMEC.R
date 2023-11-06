# SEMINARIO FUENTES DE DATOS

library(readr)
library(ggplot2)
library(dplyr)
library(tidyverse)
library(ggplot2)
library(forcats)
library(hrbrthemes)
library(viridis)
library(rjson)
library(XML)

#Ejemplos de como importar
##Datos importados por CSV
enfermedades <- read_delim(file = "input/enfermedades_cronicas1.csv",delim = ";",show_col_types = FALSE)

##Datos importados por JSON
enfermedades_json <- fromJSON(file = "input/enfermedades_cronicas1.json")

##Datos importados por XML
enfermedades_xml <- xmlParse(file="input/enfermedades_cronicas1.xml")
#

##Explicación diferencias entre CSV y JSON
#La principal diferencia entre los datos CSV (Comma-Separated Values) y JSON (JavaScript Object Notation) radica en la forma en que organizan y representan la información.
#CSV es un formato tabular simple que utiliza comas (u otros delimitadores) para separar los valores de diferentes columnas. Es especialmente útil para datos tabulares, como hojas de cálculo, y es fácil de entender y manipular en programas de hojas de cálculo y bases de datos.
#JSON, por otro lado, es un formato de intercambio de datos que utiliza una estructura de objetos legible por humanos. Consiste en pares de clave-valor y puede anidar objetos y arrays. Es más versátil que CSV y se utiliza comúnmente para representar datos estructurados en aplicaciones web y servicios web, ya que es fácil de entender y procesar mediante código.
#En resumen, CSV es más simple y adecuado para datos tabulares, mientras que JSON es más flexible y se utiliza para estructuras de datos más complejas.
#


#### DEPRESIÓN, edad, nivel de estudios
library(readr)
X47798 <- read_delim("C:/MARINA/UBU 2023-2024/FUENTES DE DATOS BIOMEDICAS/47798.csv", 
                     delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(X47798)

#César
x47798 <- read_delim("C:/Users/Usuario/Downloads/47798.csv",delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(x47798)
####

#### Dificultad uso de trasporote y grado de discapacidad
library(readr)
X51756 <- read_delim("C:/MARINA/UBU 2023-2024/FUENTES DE DATOS BIOMEDICAS/51756.csv", 
                     delim = ";", escape_double = FALSE, trim_ws = TRUE)
View(X51756)

#César
x51756 <- read_delim("C:/Users/Usuario/Downloads/51756.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)

View(x51756)

###
### DEPRESIÓN, sexo, comunidad autonoma
DrepresionCCAA <- read.csv2("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/DrepresionCCAA.csv")
View(DrepresionCCAA)
DepreCCAA <- read_delim("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/DrepresionCCAA.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)
DepreCCAA
###

###DEPRESION, actividad economica
x47277 <- read_delim("C:/Users/Usuario/Downloads/47277.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)

View(x47277)

###DEPRESION, case social
x47279 <- read_delim("C:/Users/Usuario/Downloads/47279.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)

View(x47279)

###DEPRESION Y pais de nacimiento
x47274 <- read_delim("C:/Users/Usuario/Downloads/47274.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)

View(x47274)

##Tasa de suicidio, por fecha y CCAA (Solo lo hay en CSV)
Suicidio <- read.csv2("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/Suicidio.csv", header=FALSE, comment.char="#")
View(Suicidio)

Suicidi <- read_delim("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/Suicidio.csv",delim = ";",show_col_types = FALSE)
View(Suicidi)

##Enfermedades crónicas diagnosticadas por CCAA y sexo

EnferCroni <- read.csv2("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/EnferCroni.csv", header=FALSE, comment.char="#")
View(EnferCroni)

EnfCron <- read_delim("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/EnferCroni.csv",delim = ";",show_col_types = FALSE)
View(EnfCron)

EnfermedadesCronicas <- read.csv("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/EnfermedadesCronicas.json", header=FALSE)
View(EnfermedadesCronicas)

enfermedadesCro <- fromJSON(file = "C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/EnfermedadesCronicas.json")
View(enfermedadesCro)

## PIB por CCAA

PIB <- read.csv2("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/PIB.csv", header=FALSE, comment.char="#")

PIB <- read_delim("C:/Users/Usuario/Desktop/4º Ing de la Salud/1º Cuatri/Fuentes/Seminario_MEC/PIB.csv", delim = ";", escape_double = FALSE, trim_ws = TRUE)
PIB

View(PIB)

PIB <- fromJSON(file = "PIB.json")


