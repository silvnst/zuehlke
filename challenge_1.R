# Challenge



chal <- read_file("challenge_1.txt")
n <- str_count(chal)
vec <- seq(1, round(n/40))
func <- function(n){
  pattern <- paste0("(.{", n, "}).*\\1")
  str_detect(chal, pattern = pattern)
}
v1 <- sapply(vec, func)
# length longest string
l <- vec[max(which(v1==1))]

guess <- str_extract(chal, pattern = paste0("(.{", l, "}).*\\1"))
sol <- str_extract(guess, pattern = "^.{21}")
sol












