.onAttach <- function(...) {
  proton.start = "PROTON problem is now loaded!

  Your final destination is to find Pietraszko's password on the Proton server. This is the only way for Bit to find secret plans of laboratory. \n
  Enter `proton()` command in order to start your incredible adventure. \n
  Remember that at any time you may pass `hint=TRUE` argument to the executed command in order to get an additional hint. First hint will be displayed while executing `proton(hint=TRUE)` command.
  "

   packageStartupMessage(proton.start)
}


dcode <- function(tex) {
#  liter <- sort(unique(unlist(strsplit(tex, split=""))))
#  names(liter) <- rev(liter)
  liter <- structure(c("\n", " ", "_", ",", ":", "!", "?", ".", "\"", "(",
                       ")", "/", "`", "=", "0", "1", "2", "3", "4", "5", "6", "7", "8",
                       "9", "a", "A", "ą", "b", "B", "c", "C", "ć", "d", "D", "e",
                       "E", "ę", "f", "g", "G", "h", "H", "i", "I", "j", "J", "k",
                       "l", "ł", "m", "M", "n", "N", "ń", "o", "O", "ó", "p", "P",
                       "q", "Q", "r", "R", "s", "S", "ś", "t", "T", "u", "U", "v",
                       "w", "W", "X", "y", "Y", "z", "Z", "ź", "ż"), .Names = c("ż",
                                                                                "ź", "Z", "z", "Y", "y", "X", "W", "w", "v", "U", "u", "T",
                                                                                "t", "ś", "S", "s", "R", "r", "Q", "q", "P", "p", "ó", "O",
                                                                                "o", "ń", "N", "n", "M", "m", "ł", "l", "k", "J", "j", "I",
                                                                                "i", "H", "h", "G", "g", "f", "ę", "E", "e", "D", "d", "ć",
                                                                                "C", "c", "B", "b", "ą", "A", "a", "9", "8", "7", "6", "5",
                                                                                "4", "3", "2", "1", "0", "=", "`", "/", ")", "(", "\"", ".",
                                                                                "?", "!", ":", ",", "_", " ", "\n"))

  sapply(strsplit(tex, split=""), function(x){
    paste(liter[x], collapse="")
  })
}

