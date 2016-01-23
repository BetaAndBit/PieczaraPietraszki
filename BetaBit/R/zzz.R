.onAttach <- function(...) {
  BB.start = "
___      _                       _   ___ _ _      ___
| _ ) ___| |_ __ _   __ _ _ _  __| | | _ |_) |_   / __|__ _ _ __  ___ ___
| _ \\/ -_)  _/ _` | / _` | ' \\/ _` | | _ \\ |  _| | (_ / _` | '  \\/ -_|_-<
|___/\\___|\\__\\__,_| \\__,_|_||_\\__,_| |___/_|\\__|  \\___\\__,_|_|_|_\\___/__/

Choose the game. To start just type the name of the selected game in the console with parentheses.

1. proton()
2. crypton()
"

     packageStartupMessage(BB.start)
}

dcode <- function(tex) {
  tmp1 <- c(LETTERS, letters)
  tmp2 <- setdiff(unique(unlist(strsplit(tex, split=""))), tmp1)
  let <- c(tmp1, tmp2)
  names(let) <- c(rev(tmp1), tmp2)
  sapply(strsplit(tex, split=""), function(x){
    paste(let[x], collapse="")
  })
}


# names for next functions
# newton
# nekton - wszystko co plywa
# parton - czastka (np. kwarki i gluony)
# mutton - owca
# photon
# carton - opakowanie
# button
# skeleton
# singleton
# piston - tlok
# ponton
# pluton

