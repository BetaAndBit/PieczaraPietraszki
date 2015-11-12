proton <- function(...) {
 args <- list(...)
 # plain start
 if (length(args) == 0) {
    cat(texts["proton.init"])
    return(invisible(NULL))
 }
 if (length(args) == 1 && !is.null(args$wskazowka) && args$wskazowka) {
   cat(texts["proton.init"], "\n\nWSKAZÓWKA:\n",texts["proton.init.w"])
   return(invisible(NULL))
 }

 # action = login
 if(length(args)>0 && args$action == "login") {
   # only user is set to janie
   if (args$user == texts["log.1"] && is.null(args$pass)) {
     cat(texts["proton.login.init"])
     if (!is.null(args$wskazowka) && args$wskazowka) {
       cat("\n\nWSKAZÓWKA:\n",texts["proton.login.init.w"])
     }
     return(invisible(NULL))
   }
   # user is set to janie and password is provided




   # only user is set
   # user is set to slapie and password is provided

    if (args$user == texts["log.1"] & args$pass == texts["pas.1"]) {
      return("Sukces! Użytkownik zalogowany!")
    } else {
      return("Niepoprawne hasło lub użytkownik!")
    }
 }

}
