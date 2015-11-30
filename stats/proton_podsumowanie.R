setwd("~/Dropbox/")
library(openxlsx)
library(ggplot2)
library(ggthemes)

dane <- read.xlsx("proton.xlsx",1)
dane$poziom <- reorder(dane$poziom, -dane$czas, median)
ggplot(dane, aes(poziom, czas, fill=poziom, color=poziom)) +
  geom_violin(alpha=0.25) + 
  geom_dotplot(binaxis="y", stackdir = "center") + 
  theme_tufte() + 
  theme(legend.position="none", 
        panel.grid=element_line(color="black", size=1),
        panel.grid.major.x=element_line(color="white", size=0)) + xlab("\n\nSelf-declared level of knowledge of R") +
  scale_y_continuous(limits=c(0,120), name ="Self-declared time of solving all 4 puzzles\n[minutes]\n", breaks=seq(0,120,10))

