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

 texts <- (structure(c("Pietraszko uses a password which is very difficult to guess.\nAt first try to hack an account of a person who is not as cautious as Pietraszko.\n\nBut who is the weakest point? Initial investigation suggests that John Insecure doesn't care about security and has account on the proton server. He may use a password which is easy to crack.\nLet's attack his account first!\n\nProblem 1: Find the login of John Insecure.\n\nBit has scrapped employees data (names and logins) from the www web page of Technical University of Warsaw. The data is in the data.frame `employees`. \nNow, your task is to find John Insecure's login.\nWhen you finally find what the John’s login is, use `proton(action = \"login\", login=\"XYZ\")` command, where XYZ is Insecure's login.\n",
                            "In `employees` dataset try to find a row which has `Insecure` value in the `surname` column.\n\Functions like `filter` or `arrange` from the `dplyr` package may be very useful.\n",
                            "johnins",
                            "slap",
                            "Congratulations! You found out what the John Insecure's login is!\nIt is highly likely that he uses some typical password.\nBit downloaded from the Internet the database with 1000 most commonly used passwords.\nYou can find this database it in the `top1000passwords` vector.\n\nProblem 2: Find the John Insecure's password.\n\nUse `proton(action = \"login\", login=\"XYZ\", password=\"ABC\")` command in order to log into the Proton server with given credentials.\nIf the password is correct, you will get the following message:\n`Success! User is logged in!`.\nOtherwise you will get:\n`Password or login is incorrect!`.\n",
                            "Use the brute force method.\nBy using a loop, try to log in with subsequent passwords from `top1000passwords` vector as long as you receive:\n`Success! User is logged in!`.\n",
                            "Password or login is incorrect",
                            "Success! User is logged in!",
                            "Well done! This is the right password!\nBit used John Insecure's account in order to log into the Proton server.\nIt turns out that John has access to server logs.\nNow, Bit wants to check from which workstation Pietraszko is frequently logging into the Proton server. Bit hopes that there will be some useful data.  \n\nLogs are in the `logs` dataset. \nConsecutive columns contain information such as: who, when and from which computer logged into Proton.\n\nProblem 3: Check, from which server Pietraszko is logging the most often into the Proton server.\n\nUse `proton(action = \"server\", host=\"XYZ\")` command in order to learn more what can be found on the XYZ server.\nThe biggest chance to find something interesting, is to find a server from which Pietraszko is logging the most often.\n\n",
                            "In order to get to know from which server Pietraszko is logging the most often one may:\n1. Use `filter` function to choose only Pietraszko's logs,\n2. Use `group_by` and `summarise` to count the number of Pietraszko's logs into separate servers,\n3. Use `arrange` function to sort servers' list by the frequency of logs.\n\nUse `employees` database in order to check what Pietraszko's login is.\n",
                            "Nice try, but there is nothing interesting about this login.\nThe weakest link of Proton server is John Insecure.\nTry to find his login.\n",
                            "Congratulations!\n\nYou have cracked Pietraszko's password!\nSecret plans of his lab are now in your hands.\nWhat is in this misteriouse lab?\nYou may read about it in the `Pietraszko's cave` story which is available on \nhttp://biecek.pl/BetaBit/Warsaw\n\nNext adventure of Beta and Bit will be available soon.\n\n",
                            "It turns out that Pietraszko often uses the public workstation 194.29.178.16.\nWhat a carelessness!\n\nBit infiltrated this workstation easily. He downloaded `bash_history` file which contains a list of all commands that were entered into the server's console.\nThe chances are that some time ago Pietraszko typed a password to the console by mistake; thinking that he logs into the Proton server.\n\nProblem 4: Find the Pietraszko's password.\n\nIn the `bash_history` dataset you will find all commands and parameters that were entered.\nTry to extract only commands from this dataset (only strings before space) and check whether one of them looks like a password.\n",
                            "Commands and parameters are separated by a space. In order to extract only names of commands from each line, you can use `gsub` or `strsplit` function.\nAfter having all commands extracted you should check how often each command is used.\nPerhaps it will turn out that one of typed in commands look like a password?\n\nIf you see something which looks like a password, you shall use `proton(action = \"login\", login=\"XYZ\", password=\"ABC\")` command to log into the Proton server with Pietraszko credentials.\n"
                            ), .Names = c("proton.init", "proton.init.w",
                                          "log.1", "log.2", "proton.login.init", "proton.login.init.w",
                                          "proton.login.fail", "proton.login.pass", "proton.login.pass.instr",
                                          "proton.login.pass.instr.w", "proton.login.weak", "proton.final",
                                          "proton.host.instr", "proton.host.instr.w")
                          )
)


 # plain start
 if (length(args) == 0) {
    cat(texts["proton.init"])
    return(invisible(NULL))
 }
 if (length(args) == 1 && !is.null(args$hint) && args$hint) {
   cat(texts["proton.init"], "\n\nHINT:\n",texts["proton.init.w"], sep = "")
   return(invisible(NULL))
 }

 # action = server
 if(length(args)>0 && !is.null(args$action) && args$action == "server") {
  if (!is.null(args$host) && digest(args$host) == "94265570be658d9fafa4861d7252afa9") {
    cat(texts["proton.host.instr"])
    if (!is.null(args$hint) && args$hint) {
      cat("\n\nHINT:\n",texts["proton.host.instr.w"], sep = "")
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
       cat("\nHINT:\n",texts["proton.login.init.w"], sep = "")
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
         cat("\nHINT:\n",texts["proton.login.pass.instr.w"], sep = "")
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
