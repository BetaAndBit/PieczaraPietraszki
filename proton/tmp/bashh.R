c1 <- readLines("tmp/comm_1.txt")
c2 <- readLines("tmp/comm_2.txt")
c3 <- readLines("tmp/comm_3.txt")
c4 <- readLines("tmp/comm_4.txt")


bash_history <- c(rep(c("ps aux","ps ax","ps"), 100),
rep('top', 150),
rep("mc", 112),
rep("service httpd start", 20),
rep("pwd", 80),
rep("whoiam", 90),
rep("ps", 120),
rep(paste("cat", c1), 72),
rep(paste("vim", c1), 60),
rep(paste("vi", c1), 51),
rep(paste("mcedit", c1), 36),
rep(paste("cat", c3), 55),
rep(paste("vim", c3), 41),
rep(paste("vi", c3), 21),
rep(paste("mcedit", c3), 16),
rep(paste("cat", c4), 25),
rep(paste("vim", c4), 11),
rep(paste("vi", c4), 22),
rep(paste("mcedit", c4), 16),
rep(paste("cd", c2), 120),
rep(paste("ls", c2), 86),
rep(paste("rm", c2), 76),
rep(paste("cp", c2), 56),
"DHbb7QXppuHnaXGN"
)

bash_history <- sample(bash_history)

