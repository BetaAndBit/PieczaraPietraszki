#' The history of loggings into the Proton server
#'
#' The dataset describing the history of loggings: who, from where and when logged into the Proton server.
#' The subsequent columns in this dataset describe:
#' \itemize{
#'   \item login. The login of the user which logs into the Proton server. 
#'   \item host. The IP address of the computer, from which the logging into the Proton server was detected.
#'   \item date. The date of logging into the Proton server. Rows are sorted by this column.
#' }
#'
#' @docType data
#' @keywords datasets
#' @name loggings
#' @usage data(loggings)
#' @format a data frame with 59366 rows and 3 columns.
NULL
