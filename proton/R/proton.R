proton <- function(...) {
 args <- list(...)
 if (length(args) == 0) {
    cat("Bit jest ciekaw co znajduje się na koncie tego dziwaka Pietraszki.
Aby to sprawdzić musi poznać jego hasło.
To jednak wcale nie jest proste, Pietraszko nie podda się prostym sztuczkom socjotechnicznym.
")
   return(invisible(NULL))
 }

 if(args$action == "login") {
    if (args$user == "jkowal" & args$pass == "q1w2e3r4t5") {
      return("Sukces! to jest to hasło!")
    } else {
      return("Niepoprawne hasło lub użytkownik!")
    }
 }

}
