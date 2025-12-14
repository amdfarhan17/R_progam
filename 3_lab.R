n <- as.integer(readline(prompt = "Enter a positive integer n: "))
even_numbers <- c()

for (i in 1:n)
{
  if (i %% 2 == 0)
  {
    even_numbers <- c(even_numbers, i)
  }
}

cat("Even numbers from 1 to", n, "are:\n")
print(even_numbers)