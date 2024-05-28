library(ggplot2)

# Utilisation du jeu de données mtcars
data("mtcars")

# Création d'un graphique en nuage de points avec une régression linéaire
p <- ggplot(mtcars, aes(x=wt, y=mpg)) +
  geom_point(aes(color=factor(cyl)), size=3) +  # Nuage de points coloré par le nombre de cylindres
  geom_smooth(method="lm", se=TRUE, color="black", linetype="dashed") +  # Régression linéaire avec intervalle de confiance
  labs(title="Relation entre le poids et la consommation d'essence",
       subtitle="Données issues du jeu de données mtcars",
       x="Poids (en milliers de livres)",
       y="Consommation (miles par gallon)",
       color="Cylindres") +
  theme_minimal() +  # Thème minimaliste
  theme(plot.title=element_text(hjust=0.5),
        plot.subtitle=element_text(hjust=0.5))

# Affichage du graphique
print(p)

# Sauvegarde du graphique dans un fichier PNG
ggsave("visualization.png", plot = p, width = 8, height = 6)
