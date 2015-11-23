.onAttach <- function(...) {
  proton.start = "Zadanie PROTON wczytane!

  Twoim celem jest odnalezienie hasła Pietraszki na serwerze Proton. Tylko to pozwoli Bitowi poznać sekretne plany laboratorium. \n
  Wpisz komendę `proton()` aby rozpocząć przygodę.\n
  W każdej chwili, do wykonywanej komendy możesz dodać argument `wskazowka=TRUE`, aby uzyskać dodatkową podpowiedź. Pierwsza podpowiedź wyświetli się przy instrukcji `proton(wskazowka=TRUE)`.
  "
  if (.Platform$OS.type == 'windows') {
    proton.start <- smart_iconv(proton.start)
    levels(pracownicy$nazwisko) <- smart_iconv(levels(pracownicy$nazwisko))
    levels(pracownicy$imie) <- smart_iconv(levels(pracownicy$imie))
    levels(pracownicy$login) <- smart_iconv(levels(pracownicy$login))
    levels(logowania$login) <- smart_iconv(levels(logowania$login))
    assign("pracownicy", pracownicy, envir = .GlobalEnv)
    assign("logowania", logowania, envir = .GlobalEnv)
  }

  packageStartupMessage(proton.start)
}

smart_iconv <- function(res) {
  tmp <- iconv(res, from = "UTF-8", to = "windows-1250")
  if (is.na(tmp[1])) {
    return(res)
  }
  tmp
}

dcode <- function(tex) {
  add <- setdiff(unique(unlist(strsplit(tex, split=""))),letters)
  liter <- c(letters, add)
  names(liter) <- c(rev(letters), add)

  res <- sapply(strsplit(tex, split=""), function(x){
    paste(liter[x], collapse="")
  })

  if (.Platform$OS.type == 'windows') {
    res <- smart_iconv(res)
  }
  res
}

