get_user_data <- function()
{
  num_categories <- as.integer(readline(prompt = "Enter the number of categories: "))
  categories <- character(num_categories)
  values <- numeric(num_categories)
  for (i in 1:num_categories)
  {
    categories[i] <- readline(prompt = paste("Enter name for category", i, ": "))
    values[i] <- as.numeric(readline(prompt = paste("Enter value for", categories[i], ": ")))
  }
  return(list(categories = categories, values = values))
}
create_charts <- function()
{
  data <- get_user_data( )
  categories <- data$categories
  values <- data$values
  if (length(categories) == 0 || any(is.na(values)))
  {
    cat("Invalid input. Please ensure all values are numbers.\n")
    return( )
  }
  
  cat("Generating Pie Chart...\n")
  pie(values, labels = categories, main = "Pie Chart: User Data Distribution",
      col = rainbow(length(categories)))
  cat("Generating Bar Chart...\n")
  barplot(values, names.arg = categories, main = "Bar Chart: User Data",
          xlab = "Categories", ylab = "Values", col = "lightblue")
  cat("Charts created successfully. Check the graphics window.\n")
}
create_charts()