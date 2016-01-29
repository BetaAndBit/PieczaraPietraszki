library(openxlsx)

wb <- read.xlsx("pacjenci.xlsx",1, header=F, dec=",")
wb[,1] <- as.character(wb[,1])

for (i in 1:nrow(wb)) {
  if (is.na(wb[i,1]))
    wb[i,1] <- wb[i-1,1]
}

wb$gr <- ""
wb$gr[wb$X8 != "0,000000"] = "Amplification"
wb$gr[wb$X9 != "0,000000"] = "Gain"
wb$gr[wb$X10 != "0,000000"] = "Loss"
wb$gr[wb$X11 != "0,000000"] = "Deletion"
wb$gr <- factor(wb$gr)

# for selected chromosome

chr <- "chr1"

wbsel <- wb[wb$X3 == chr, ]
wbsel$X5 <- as.numeric(as.character(wbsel$X5))
wbsel$X6 <- as.numeric(as.character(wbsel$X6))

library(ggplot2)
ggplot(wbsel, aes(x=X1, y=X5, xend=X1, yend=X6, color=gr)) +
  geom_segment() + coord_flip()




