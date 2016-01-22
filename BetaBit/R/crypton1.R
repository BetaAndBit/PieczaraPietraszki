#' @title The Crypton Game
#'
#' @description
#' The \code{crypton} function ...
#'
#' @param ... \code{crypton} function is called by different arguments, which vary depending
#' on a problem that Bit is trying to solve. See \code{Details} in order to learn more about the list of possible arguments.
#'
#' @details Every time when some additional hints are needed one should add
#' \code{hint=TRUE} argument to the \code{crypton} function.
#'
#'
#' @author
#' Tymoteusz Wolodzko (crypton game),
#' Przemyslaw Biecek (documentation / man page)
#'
#' @examples
#' \dontrun{
#' crypton()
#' crypton(hint=TRUE)
#' }
#' @rdname crypton
#' @import dplyr
#' @export

crypton <- function(...) {

  args <- list(...)

  whoname <- "Pietraszko"
  theuser <- employees[employees$surname == whoname, "login"]
  theid   <- user_ids[user_ids$login == theuser, "user_id"]
  themsgs <- messages %>% filter(user_id == theid) %>% arrange(id)
  passwds <- list()
  passwds[[1]] <- as.numeric(format(birthdays[birthdays$user_id == theid, "birthday"], "%d"))
  passwds[[2]] <- 213
  passwds[[3]] <- linprg(187, nchar(themsgs[6, "text"]))

  text <- c(

    "Your task is to find %s user_id in user_ids table. This ID will be crucial for the upcoming task!
    Hint: you can use one of the join functions in dplyr library.
    \nCheck http://en.wikipedia.org/wiki/Join_(SQL) to learn more about joins.
    \nTo provide the answer use `crypton(user_id = XYZ)` command, where XYZ is the user ID of %s.",

    "OK! Now, when we already know user_id of %s we can move to our next task. Find first message in the dataset by %s.
    Hint: message IDs are in ascending order. What is the ID of the first message posted by %s?
    \nTo provide the answer use `crypton(msg_id = XYZ)` command, where XYZ is the message ID of %s's first message.",

    "OK! That was simple, wasn't it? Did you notice that some of %s's messages are a little bit strange? They seem to be encrypted - maybe try checking %s's communication to get a hint about the encryption used?
    \nIn %s's third message you can learn that %s is encrypting his communication. To decrypt %s's messages we need first to convert the messages to a vectors of characters. Your first task will be to convert %s's first message to a vector of characters.
    \nTo provide the answer use `crypton(char_vec = XYZ)` command, where XYZ is vector of characters of %s's first message.",

    "If you know how to convert messages to character strings, next convert %s's fourth message to ASCII codes. This would be the first step that needs to be done before we can decrypt any of the messages.
    \nSee http://en.wikipedia.org/wiki/ASCII to learn more about ASCII codes.",

    "Now we know ASCII codes for the characters so we can sum, multiply and do all the mathematical operations that are needed to encrypt and decrypt them!
    \nYour next task is to decrypt this message using Caesars cipher, where %s's day of birth is the key. Luckily only printable ASCII characters are used in the messages.
    \nSee http://en.wikipedia.org/wiki/Caesar_cipher to learn more about Caesar cipher. Check also http://en.wikipedia.org/wiki/Modular_arithmetic to learn more about modular arithmetic before proceeding further
    \nTo provide the answer use `crypton(decrypted1 = XYZ)` command, where XYZ is the decrypted message.",

    "To decrypt the previous message we used day of birth as a key, but how can we decrypt the next one?!
    \nHint: You need to conduct brute-force search. Luckily we are using only ASCII printable characters so we have only 95 possible values to check (94 - 126). Did you notice any repeating pattern in %s's messages? Use this pattern to assess if you found the correct key.
    \nSee http://en.wikipedia.org/wiki/Brute-force_search
    \nTo provide the answer use `crypton(decrypted2 = XYZ)` command, where XYZ is decrypted message.",

    "Unfortunately %s has changed the method of encryption, what makes it even more complicated is the fact that now longer keys are used. Fortunately, long keys are generated using a simple pseudo-random numbers generator named linear congruential generator. The method is pretty simple, so the password can be easily broken using brute-force search. Use linear congruential generator to produce passwords, then assess passwords match using the same method as previously.
    \nSee: http://en.wikipedia.org/wiki/XOR_cipher and http://en.wikipedia.org/wiki/Linear_congruential_generator
    \nTo provide the answer use `crypton(decrypted3 = XYZ)` command, where XYZ is decrypted message.",

    "Well done, you have successfully completed all the tasks!"

  )

  text <- sapply(text, function(x) gsub("%s", whoname, x))
  names(text) <- NULL

  if (length(args) == 0) {

    cat(text[1])

  } else {

    if (length(args) == 1 && !is.null(args$user_id) &&
        args$user_id == theid) {

      cat(text[2])

    } else if (length(args) == 1 && !is.null(args$msg_id) &&
               args$msg_id == themsgs[1, "id"]) {

      cat(text[3])

    } else if (length(args) == 1 && !is.null(args$char_vec) &&
               args$char_vec == strsplit(themsgs[3, "text"], "")[[1]]) {

      cat(text[4])

    } else if (length(args) == 1 && !is.null(args$ascii_vec) &&
               args$ascii_vec == asc(themsgs[1, "text"])) {

      cat(text[5])

    } else if (length(args) == 1 && !is.null(args$decrypted1) &&
               args$decrypted1 == rot(themsgs[4, "text"], passwds[[1]] ) ) {

      cat(text[6])

    } else if (length(args) == 1 && !is.null(args$decrypted2) &&
               args$decrypted2 == rot(themsgs[5, "text"], passwds[[2]] ) ) {

        cat(text[7])

    } else if (length(args) == 1 && !is.null(args$decrypted3) &&
               args$decrypted3 == passxor(as.numeric(strsplit(themsgs[6, "text"], " ")[[1]]),
                                          passwds[[3]],
                                          as.string = TRUE ) ) {

      cat(text[8])

    } else {

      cat("Sorry, but this answer is not correct.")

    }

  }

}

