#' @title Główna funkcja w grze ,,Włam do Protona''
#'
#' @description
#' \code{proton} pozwala na wykonywanie rozmaitych zadań.
#' Wystarczy rozwiazać cztery zagadki by włamać się na konto Pietraszki!
#'
#'
#' @param ... Funkcja proton przyjmuje rózne argumenty w zależności od tego, którą zagadkę rozwiązujemy.
#' W każdej sytuacji, jeżeli potrzebujemy dodatkowych wskazówek, należy dodać argument `wskazowka=TRUE`.
#' Aby zalogować się do protona należy podać argumenty `action = \"login\", login=\"XYZ\", password=\"ABC\"`.
#' Aby sprawdzić zawartość innego serwera, należy podać argumenty `action = \"server\", host=\"XYZ\"`.
#'
#' @author
#' Przemysław Biecek, \email{przemyslaw.biecek@@gmail.com}
#'
#' @examples
#' \dontrun{
#' proton()
#' proton(wskazowka=TRUE)
#' }
#' @rdname proton
#' @export
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

 # action = server
 if(length(args)>0 && !is.null(args$action) && args$action == "server") {
  if (!is.null(args$host) && args$host == texts["proton.host"]) {
    cat(texts["proton.host.instr"])
    if (!is.null(args$wskazowka) && args$wskazowka) {
      cat("\n\nWSKAZÓWKA:\n",texts["proton.host.instr.w"])
    }
    return(invisible(NULL))
  } else {
    cat(texts["proton.login.pass.instr.w"])
  }
 }

 # action = login
 if(length(args)>0 && !is.null(args$action) && args$action == "login") {
   # only user is set to janie
   if (args$user == texts["log.1"] && is.null(args$password)) {
     cat(texts["proton.login.init"])
     if (!is.null(args$wskazowka) && args$wskazowka) {
       cat("\n\nWSKAZÓWKA:\n",texts["proton.login.init.w"])
     }
     return(invisible(NULL))
   }
   # user is set to janie and password is provided
   if (args$user == texts["log.1"] && !is.null(args$password)) {
     if (args$password == texts["pas.1"]) {
       cat(texts["proton.login.pass.instr"])
       if (!is.null(args$wskazowka) && args$wskazowka) {
         cat("\n\nWSKAZÓWKA:\n",texts["proton.login.pass.instr.w"])
       }
       return(texts["proton.login.pass"])
     } else {
       return(texts["proton.login.fail"])
     }
   }
   # only user is set
   if (args$user != texts["log.1"] && is.null(args$password)) {
     cat(texts["proton.login.weak"])
     return(invisible(NULL))
   }

   # user is set to slapie and password is provided
   if (args$user == texts["log.2"] && !is.null(args$password)) {
     if (args$password == texts["pas.2"]) {
       cat(texts["proton.final"])
       return(texts["proton.login.pass"])
     } else {
       return(texts["proton.login.fail"])
     }
   }

 }

}
