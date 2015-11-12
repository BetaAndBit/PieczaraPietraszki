imiona_m = as.character(read.table("names_f.txt")[,2])
imiona_s = as.character(read.table("names_s.txt")[,2])

nazwiska <- sample(imiona_s[c(1:350,1:100,1:50,1:20,1:10,1:5,1:3,1:2)])


imionaM <- (imiona_m[c(1:140,1:74,1:30,1:17,1:5,1:3,1)])
imionaF <- (imiona_f[c(1:153,1:80,1:27,1:6,1:3,1)])

df <- data.frame(imie=c(imionaM, imionaF), nazwisko=nazwiska)

df$n1 <- paste0(substr(df$imie, 1, 1), ".", substr(df$nazwisko, 1, 100))
df$n2 <- paste0(substr(df$imie, 1, 100), ".", substr(df$nazwisko, 1, 100))
df$n3 <- paste0(substr(df$imie, 1, 1),  substr(df$nazwisko, 1, 3))
df$n4 <- substr(df$imie, 1, 100)

login <- ifelse(runif(540) < 0.5,
       df$n1,
       ifelse(runif(540) < 0.5,
              df$n2,
              ifelse(runif(540) < 0.75,
                     df$n3,
                     df$n4
              )
       ))

df$login <- make.names(tolower(login), unique = TRUE)
tmp <- rbind(df[,c(1,2,7)], data.frame(imie="Sławomir", nazwisko="Pietraszko", login="slap"))
tmp <- tmp[sample(nrow(tmp)),]
rownames(tmp) <- NULL

