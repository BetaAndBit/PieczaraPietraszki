
asc <- function(x) strtoi(Vectorize(charToRaw)(x), 16L)

chr <- function(n) rawToChar(as.raw(n))

rot <- function(x, h = 0, raw = FALSE) {
  if (!raw) x <- asc(x)
  encr <- ((x - 32 + h) %% 94) + 32
  if (!raw) chr(encr) else encr
}

linprg <- function(x, size, a = 1103515245, b = 12345, m = 2^31) {
  if (is.character(x)) x <- asc(x)
  n <- length(x)
  if (size <= n) return(x[1:size])
  for (i in (n+1):size)
    x[i] <- (x[i-1]*a + b) %% m
  return(x)
}

passxor <- function(text, pass, as.string = FALSE) {
  if (is.character(text)) text <- asc(text)
  if (is.character(pass)) pass <- asc(pass)
  encr <- bitwXor(text, pass)[seq_along(text)]
  if (as.string) chr(encr) else encr
}
