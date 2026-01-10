
cel_to_fah <- function(cel)
{
  return((cel * 9/5) + 32)
}


fah_to_cel <- function(fah)
{
  return((fah - 32) * 5/9)
}


cat("Temperature Converter\n")
cat("1. Fahrenheit to Celsius\n")
cat("2. Celsius to Fahrenheit\n")


choice <- as.integer(readline(prompt = "Enter your choice (1 or 2): "))


if (choice == 1)
{
  fah <- as.numeric(readline(prompt = "Enter temperature in Fahrenheit: "))
  cel <- fah_to_cel(fah)
  cat(sprintf("%.2f Fahrenheit is %.2f Celsius\n", fah, cel))
}else if (choice == 2)1
{
  cel <- as.numeric(readline(prompt = "Enter temperature in Celsius: "))
  fah <- cel_to_fah(cel)
  cat(sprintf("%.2f Celsius is %.2f Fahrenheit\n", cel, fah))
}else
{
  cat("Invalid choice. Please enter 1 or 2.\n")
}
