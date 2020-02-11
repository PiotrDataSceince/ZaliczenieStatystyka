

dane_GUS_pionowo = read.table("C:/Users/Piotr/Desktop/Studia/Jêzyk R/Dane GUS/edit.csv", header = TRUE,  sep = ";" ,stringsAsFactors = FALSE)

# Œrednia
srednia_aryt  = mean(dane_GUS_pionowo$Wartosc)

#Mediana
mediana = median(dane_GUS_pionowo$Wartosc)

#Summary
summary = summary(dane_GUS_pionowo$Wartosc) # 1 kwantyl, Mediana, Œrednia, 3 kwantyl, maksymalna wartoœæ

#Odchylenie standardowe
odchylenie_standardowe = sd(dane_GUS_pionowo$Wartosc)

#Korelacja Petersona
wartosc = (dane_GUS_pionowo$Wartosc)
rok = (dane_GUS_pionowo$Rok)
korelacja_petersona = cor(wartosc, rok)

#Regrasja liniowa
regresja_liniowa = lm(formula = dane_GUS_pionowo$Rok ~ dane_GUS_pionowo$Wartosc)
summary(regresja_liniowa)

#Histogram
png(file = "wykres_1.png")
wykres_1 = plot (rok, wartosc, main = "Zmiana ceny w czasie") # wykres podstawowy fynckji plot
dev.off()
png(file = "wykres_2.png")
wykres_2 = barplot(wartosc, main = "Porównanie cen" ,horiz = TRUE, las = 2) # histogram poziomy
dev.off()












