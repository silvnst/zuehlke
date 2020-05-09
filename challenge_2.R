# Challenge 2

# vigenere cipher
# letters A-Z -> numbers 0-25

# "If the letters A-Z are taken to be the numbers 0-25,
# and addition is performed modulo 26, Vigenère encryption 
# E using the key K can be written as 
# C_i=E_K (M_i)=(M_i+K_i )mod 26 
# M=M_1…M_n is the Message
# C=C_1…C_n is the ciphertext
# K=K_1… K_n is the key
# obtained by repeating the keyword m times in 
# which m is the keyword length."

crypt <- read_file("challenge_2.txt")
l <- str_count(chal2)

key_word <- "MONKEYISLAND"
key <- str_dup(key, round(l/str_count(key_word))+1) %>%
  str_extract(pattern = paste0("^.{", l, "}"))

# ewrising äs karakderveggdor
crypt <- str_split(crypt, pattern = "")[[1]]
key <- str_split(key, pattern = "")[[1]]




