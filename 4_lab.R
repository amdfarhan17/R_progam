print_squares_user_input <- function()
{
  
  start <- as.integer(readline(prompt = "Enter the starting number: "))
  
  
  end <- as.integer(readline(prompt = "Enter the ending number: "))
  
  
  sequence <- start:end
  
  
  cat("Squares of numbers from", start, "to", end, "are:\n")
  
  
  for (num in sequence)
  {
    
    square <- num * num
    
    
    cat(sprintf("Square of %d is %d\n", num, square))
  }
}


print_squares_user_input()
