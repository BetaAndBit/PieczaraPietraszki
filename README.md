# PieczaraPietraszki
http://biecek.pl/BetaBit/Warszawa


![Okładka z www](https://github.com/BetaAndBit/PieczaraPietraszki/raw/master/Zdjecia/okladka.png)

# Zagraj w grę 'Włam do Protona'

Zainstaluj i włącz pakiet `proton` a następnie podążaj za instrukcjami.
Czy uda Ci się złamać hasło Pietraszki?

```{Ruby}
if (!require(devtools)) {
    install.packages("devtools")
    require(devtools)
}
install_github("BetaAndBit/PieczaraPietraszki/proton")

# Start gry
library(proton)
```

## Autor 
> Gra
>   Przemysław Biecek, przemyslaw.biecek@gmail.com
> 
> Opowiadanie
>   Magda Chudzian
>   Przemysław Biecek
