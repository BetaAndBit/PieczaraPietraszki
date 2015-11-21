#' @title ,,Hack into Proton''
#'
#' @description
#' \code{proton} function enables a player to solve problems in ,,Hack into Proton'' game.
#' It is sufficient to solve four riddles in order to get into Pietraszko's account!
#' 
#' @param ... \code{proton} function is called by different arguments, which vary depending
#' on a riddle that we try to solve. See \code{Details} in order to get to know how the
#' whole list of arguments looks like.
#'
#' @details Every time when some additional hints are needed one should pass 
#' \code{hint=TRUE} argument to the \code{proton} function.
#' 
#' In order to get some more information about a user on the Proton server  
#' one should pass \code{action = "login"}, \code{login="XYZ"} arguments 
#' to the \code{proton} function.
#' 
#' In order to log into the Proton server one should pass \code{action = "login"},
#' \code{login="XYZ"}, \code{password="ABC"} arguments to the \code{proton} function.
#' If the password matches login, then one will receive a message about correct log.
#'
#' In order to log into a server different from Proton one should pass 
#' \code{action = "server"}, \code{host="XYZ"} arguments to the \code{proton} function.
#'
#' \strong{Attention}:
#'
#' ,,Hack into Proton'' game is free of charge, educational project of the SmarterPoland.pl Foundation.
#' By transfering a donation on the foundation's account which is 
#' shown on \url{http://smarterpoland.pl/index.php/fundacja/} site, you will help
#' us to create another educational games. Even a sum of 10 $ will faciliate
#' creating and maintaining subsequent educational projects!
#' Thank you!
#'
#' @author
#' Przemysław Biecek, \email{przemyslaw.biecek@@gmail.com}, SmarterPoland.pl Foundation.
#'
#' @examples
#' \dontrun{
#' proton()
#' proton(hint=TRUE)
#' }
#' @rdname proton
#' @importFrom digest digest
#' @export
proton <- function(...) {
 args <- list(...)

 texts <- dcode(structure(c("PROTON problem is now loaded!\n\nYour final destination is to find Pietraszko's password on the Proton server.\nThis is the only way for Bit to find secret plans of lab.\n\nEnter `proton()` command in order to start your incredible adventure.\n\nRemember that at any time you may pass `hint=TRUE` argument to the executed command in order to get an additional hint. First hint will be displayed while executing `proton(hint=TRUE)` command.\n",
                            "Pietraszko uses a password which is very difficult to guess.\nAt first try to hack into an account of a person who is not as bright as Pietraszko.\n\nInitial study suggests that John Insecure doesn't care about security; he may have a password which is easy to crack.\nLet's make an assault on his account!\n\nProblem 1: Check the login of John Insecure.\n\nBy using www site of the insitute Bit downloaded `employees` dataset. \nHis task now is to find Insecure's login in above-mentioned dataset.\nTry to help Bit in solving this issue.\nWhen you finally learn what the login is, use `proton(action = \"login\", login=\"XYZ\")` command, where XYZ is Insecure's login.\n",
                            "In `employees` dataset try to find a row which has `Insecure` value in the `surname` column.\n\nPerhaps `filter` or `arrange` functions from `dplyr` package may be useful.\n",
                            "johnins",
                            "slap",
                            "Congratulations! You found out what John Insecure's login is!\nIt is highly likely that he uses some typical password.\nBit downloaded from the Internet the database with 1000 most commonly used passwords.\nYou can find it in the `top1000passwords` vector.\n\nProblem 2: Find John Insecure's password.\n\nUse `proton(action = \"login\", login=\"XYZ\", password=\"ABC\")` command in order to log into the Proton server.\nIf the password is correct, you will receive the follwing statement:\n`Success! A User is logged in!`,\notherwise you will receive:\n`Password or login is incorrect!` statement.\n",
                            "q1w2e3r4t5",
                            "Use `Brute force` method.\nBy using a loop, try to log in with subsequent passwords from `top1000passwords` vector as long as you receive:\n`Success! A User is logged in!` statement.\n",
                            "Password or login is incorrect",
                            "Success! A user is logged in!",
                            "Well done! This is the right password!\nBit used John Insecure's account in order to get into the Proton server.\nNow, he wants to check from where Pietraszko is logging into the Proton server the most often. Perhaps in this way he may find next hints.\n\nBy using logs into the server Bit extracted `logs` dataset which contains information such as: who, when and from which computer logged into Proton.\n\nProblem 3: Check, from which server Pietraszko is logging the most often into the Proton server.\n\nUse `proton(action = \"server\", host=\"XYZ\")` command in order to learn more what can be found on the XYZ server.\nThe biggest chance to find something interesting, is to find a server from which Pietraszko is logging the most often.\n",
                            "In order to get to know from which server Pietraszko is logging the most often one may:\n1. Use `filter` function to choose only Pietraszko's logs,\n2. Use `group_by` and `summarise` to count the number of Pietraszko's logs into separate servers,\n3. Use `arrange` function to sort servers' list by the frequency of logs.\n\nYou may search through `employees` database in order to check what Pietraszo's login is.\n",
                            "Log into Proton's weakest point is John Insecure.\nTry to find his login.\n",
                            "DHbb7QXppuHnaXGN",
                            "Congratulations!\n\nYou have cracked Pietraszko's password!\nSecret plans of his lab stand wide open before you.\nWhat is exactly in this lab?\nYou may read it in Pietraszko's cave story which is available on \nhttp://biecek.pl/BetaBit/Warszawa site.\n",
                            "194.29.178.16",
                            "It turns out that Pietraszko often logs in by using the public computer 194.29.178.16.\nWhat a carelessness!\n\nBit downloaded `bash_history` file which contains a list of commands that were entered into the server's console.\nThe chances are that some time ago Pietraszko entered a password by mistake; thinking that he logs into the Proton server.\n\nIn `bash_history` dataset you can find entered statements and parameters.\nTry to extract only statements from this dataset (only strings before space) and check whether one of them looks like a password.\n",
                            "In order to extract only statement's name (string before space) from each line, you can use `gsub` or `strsplit` function.\nAfter having theses statements extracted you should check how often each statement is used.\nPerhaps it will turn out that one of instructions looks like a password?\n\nIf you find something which seems to be a password, you shall use `proton(action = \"login\", login=\"XYZ\", password=\"ABC\")` command in order to log into the Proton server.\n"
                            ), .Names = c("proton.start", "proton.init", "proton.init.w",
                                          "log.1", "log.2", "proton.login.init", "pas.1", "proton.login.init.w",
                                          "proton.login.fail", "proton.login.pass", "proton.login.pass.instr",
                                          "proton.login.pass.instr.w", "proton.login.weak", "pas.2", "proton.final",
                                          "proton.host", "proton.host.instr", "proton.host.instr.w")
                          )
)


 # plain start
 if (length(args) == 0) {
    cat(texts["proton.init"])
    return(invisible(NULL))
 }
 if (length(args) == 1 && !is.null(args$hint) && args$hint) {
   cat(texts["proton.init"], "\n\nHINT:\n",texts["proton.init.w"])
   return(invisible(NULL))
 }

 # action = server
 if(length(args)>0 && !is.null(args$action) && args$action == "server") {
  if (!is.null(args$host) && digest(args$host) == "94265570be658d9fafa4861d7252afa9") {
    cat(texts["proton.host.instr"])
    if (!is.null(args$hint) && args$hint) {
      cat("\n\nHINT:\n",texts["proton.host.instr.w"])
    }
    return(invisible(NULL))
  } else {
    cat(texts["proton.login.pass.instr.w"])
  }
 }

 # action = login
 if(length(args)>0 && !is.null(args$action) && args$action == "login") {
   # only user is set to johnins
   if (!is.null(args$login) && args$login == texts["log.1"] && is.null(args$password)) {
     cat(texts["proton.login.init"])
     if (!is.null(args$hint) && args$hint) {
       cat("\n\nHINT:\n",texts["proton.login.init.w"])
     }
     return(invisible(NULL))
   }
   if(is.null(args$login)) {
     cat("\nIf action='login' argument is set then one should also set login=. argument \n")
     return(invisible(NULL))
   }

   # user is set to janie and password is provided
   if (!is.null(args$login) && args$login == texts["log.1"] && !is.null(args$password)) {
     if (digest(args$password) == "bbfb4a474b61b80225fd49d7c67e5a01") {
       cat(texts["proton.login.pass.instr"])
       if (!is.null(args$hint) && args$hint) {
         cat("\n\nHINT:\n",texts["proton.login.pass.instr.w"])
       }
       return(texts["proton.login.pass"])
     } else {
       return(texts["proton.login.fail"])
     }
   }
   # only user is set
   if (!is.null(args$login) && args$login != texts["log.1"] && is.null(args$password)) {
     cat(texts["proton.login.weak"])
     return(invisible(NULL))
   }

   # user is set to slapie and password is provided
   if (!is.null(args$login) && args$login == texts["log.2"] && !is.null(args$password)) {
     if (digest(args$password) == "ce3494fef4545c1b6160e5430d7efe66") {
       cat(texts["proton.final"])
       return(texts["proton.login.pass"])
     } else {
       return(texts["proton.login.fail"])
     }
   }

 }

}
