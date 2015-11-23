.onAttach <- function(...) {
  proton.start = "Zadanie PROTON wczytane!

  Twoim celem jest odnalezienie hasła Pietraszki na serwerze Proton. Tylko to pozwoli Bitowi poznać sekretne plany laboratorium. \n
  Wpisz komendę `proton()` aby rozpocząć przygodę.\n
  W każdej chwili, do wykonywanej komendy możesz dodać argument `wskazowka=TRUE`, aby uzyskać dodatkową podpowiedź. Pierwsza podpowiedź wyświetli się przy instrukcji `proton(wskazowka=TRUE)`.
  "
  if (.Platform$OS.type == 'windows') {
    proton.start <- iconv(proton.start, from = "UTF-8", to = "windows-1250")
  }

  packageStartupMessage(proton.start)
}


dcode <- function(tex) {
  add <- setdiff(unique(unlist(strsplit(tex, split=""))),letters)
  liter <- c(letters, add)
  names(liter) <- c(rev(letters), add)

  res <- sapply(strsplit(tex, split=""), function(x){
    paste(liter[x], collapse="")
  })

  if (.Platform$OS.type == 'windows') {
    res <- iconv(res, from = "UTF-8", to = "windows-1250")
  }
  res
}

