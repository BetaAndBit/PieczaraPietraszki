.onAttach <- function(...) {

  proton.start = " _____ _          _____         _              _____
|_   _| |_ ___   |  _  |___ ___| |_ ___ ___   |   __|___ _____ ___
  | | |   | -_|  |   __|  _| . |  _| . |   |  |  |  | .'|     | -_|
  |_| |_|_|___|  |__|  |_| |___|_| |___|_|_|  |_____|__,|_|_|_|___|

Your goal is to find Slawomir Pietraszko's credentials for the Proton server.
This is the only way for Bit to find secret plans of Pietraszko's laboratory. \n
Enter the `proton()` command in order to start the adventure. \n
Remember that at any time you may add `hint=TRUE` argument to the executed command in order to get additional suggestions.
"
   packageStartupMessage(proton.start)
}


dcode <- function(tex) {
#  let <- sort(unique(unlist(strsplit(texts, split=""))))
#  names(let) <- rev(let)
  let <- structure(c("\n", " ", "_", ",", ";", ":", "!", "?", ".", "'", 
                     "=", "\"", "(", ")", "/", "`", "=", "0", "1", "2", "3", "4", 
                     "6", "7", "8", "9", "a", "A", "b", "B", "c", "C", "d", "e", "f", 
                     "F", "g", "h", "H", "i", "I", "j", "J", "k", "l", "L", "m", "n", 
                     "N", "o", "O", "p", "P", "q", "r", "s", "S", "t", "T", "u", "U", 
                     "v", "w", "W", "x", "X", "y", "Y", "z", "Z"), .Names = c("Z", 
                                                                              "z", "Y", "y", "X", "x", "W", "w", "v", "U", "u", "T", "t", "S", 
                                                                              "s", "r", "q", "P", "p", "O", "o", "N", "n", "m", "L", "l", "k", 
                                                                              "J", "j", "I", "i", "H", "h", "g", "F", "f", "e", "d", "C", "c", 
                                                                              "B", "b", "A", "a", "9", "8", "7", "6", "4", "3", "2", "1", "0", 
                                                                              "=", "`", "/", ")", "(", "\"", "=", "'", ".", "?", "!", ":", 
                                                                              ";", ",", "_", " ", "\n"))
  sapply(strsplit(tex, split=""), function(x){
    paste(let[x], collapse="")
  })
}