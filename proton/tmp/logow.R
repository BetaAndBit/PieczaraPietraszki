allIP <- c(paste0("194.29.178.", 0:255), paste0("193.0.96.13.", 0:55))
# 194.29.178.16
# 193.0.96.13

logowania <- lapply(pracownicy$login, function(l) {
  n <- rpois(1, 100)+10
  ip <- sample(allIP, 5)
  data.frame(login=l, host=ip[floor(rbeta(n, 5, 1)*5)+1])
})

logowania <- do.call(rbind, logowania)

logowania <- rbind(logowania, data.frame(login="slap", host=rep("194.29.178.16", 112)))

logowania$daty <- as.POSIXct(round(runif(nrow(logowania))*60*60*24*356), origin="2014-09-01 01:00:00")

logowania <- logowania[order(logowania$daty),]

rownames(logowania) <- NULL

save(logowania, file="logowania.rda")
