proton <- function(...) {
 args <- list(...)
 if (length(args) == 0) {
    cat(texts["proton.init"])
    return(invisible(NULL))
 }
 if (length(args) == 1 & args$wskazowka) {
   cat(texts["proton.init"], "\n\nWSKAZÓWKA:\n",texts["proton.init.w"])
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
