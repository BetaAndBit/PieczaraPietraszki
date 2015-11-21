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

# The English version

Install and run the game with just three commands.

```{Ruby}
library(devtools)
install_github("BetaAndBit/PieczaraPietraszki/protonENG")

# Start the game
library(proton)
```


# Opowiadanie Pieczara Pietraszki

Gra jest częścią opowiadania ,,Pieczara Pietraszki''. 
Całe opowiadanie jest dostępne pod adresem http://biecek.pl/BetaBit/Warszawa

![Okładka z www](https://github.com/BetaAndBit/PieczaraPietraszki/raw/master/Zdjecia/okladka.png)

## Autor 
> Gra: 
>   Przemysław Biecek, przemyslaw.biecek@gmail.com
> 
> Opowiadanie: 
>   Magda Chudzian, 
>   Przemysław Biecek
