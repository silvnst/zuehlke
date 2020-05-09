# challange 3

names <- read_file("challenge_3_names.txt")
names_sorted <- str_split(names, pattern = "\\s*,\\s*")
salaries <- read_file("challenge_3_salary.txt")
salaries_sorted <- str_split(salaries, pattern = ",")

the_company <- tibble("name" = names_sorted[[1]], 
                      "salary" = as.integer(salaries_sorted[[1]]))

the_company <- 
  the_company %>% 
  group_by(name) %>%
  summarise(salary = sum(salary)) %>% 
  arrange(desc(salary))


the_company %>% mutate(rank = rank(salary)) %>% ggplot(aes(rank, salary)) + geom_point()
