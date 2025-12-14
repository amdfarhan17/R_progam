print_squares_user_input <- function()
{
  # 1. Get the starting number from the user
  start <- as.integer(readline(prompt = "Enter the starting number: "))
  
  # 2. Get the ending number from the user
  end <- as.integer(readline(prompt = "Enter the ending number: "))
  
  # 3. Create the sequence of numbers from start to end
  sequence <- start:end
  
  # 4. Print a header for the output
  cat("Squares of numbers from", start, "to", end, "are:\n")
  
  # 5. Loop through each number in the sequence
  for (num in sequence)
  {
    # Calculate the square
    square <- num * num
    
    # Print the result using formatted output
    cat(sprintf("Square of %d is %d\n", num, square))
  }
}

# 6. Call the function to execute the code
print_squares_user_input()