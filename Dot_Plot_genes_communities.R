library(ggplot2)

grafico_tesis <- read.csv("C:/Users/rodri/Downloads/Tabla_para_graficos_en_R.csv")

grafica_puntos <- ggplot(grafico_tesis, aes(x = Comunidad, y = Cantidad.de.genes, color = Subtipo.molecular)) +
geom_point() +
labs(title = "Cantidad de genes presentes por comunidad de cada subipo molecular",
x = "Comunidad",
y = "Cantidad de genes") + theme_bw() + theme(axis.text.x = element_text(angle = 90, vjust = 0.5)) +
scale_color_brewer(palette = "Set1")

print(grafica_puntos)
