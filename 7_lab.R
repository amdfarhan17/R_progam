create_vector <- function()
{
  cat("Enter elements for the vector (comma-separated, e.g., 1,2,3 or 'a','b','c'):\n")
  input <- readline(prompt = "")
  elements <- strsplit(input, ",")[[1]]
  vec <- tryCatch(as.numeric(elements), error = function(e) elements)
  cat("Created Vector:\n")
  print(vec)
  cat("Type of vector:", typeof(vec), "\n")
  cat("Length:", length(vec), "\n")
  cat("First element:", vec[1], "\n")
  cat("Sum (if numeric):", if(is.numeric(vec)) sum(vec) else "N/A", "\n")
}

create_list <- function()
{
  cat("Enter number of elements for the list:\n")
  n <- as.integer(readline(prompt = ""))
  my_list <- list()
  for (i in 1:n)
  {
    cat("Enter value for element", i, "(e.g., 42 or 'hello'):\n")
    val <- readline(prompt = "")
    num_val <- suppressWarnings(as.numeric(val))
    if (!is.na(num_val))
    {
      my_list[[i]] <- num_val
    } else
    {
      my_list[[i]] <- val
    }
  }
  cat("Created List:\n")
  print(my_list)
  cat("Length:", length(my_list), "\n")
  cat("First element:", my_list[[1]], "\n")
  cat("Types of elements:", sapply(my_list, typeof), "\n")
}

create_dataframe <- function()
{
  cat("Enter number of rows:\n")
  rows <- as.integer(readline(prompt = ""))
  cat("Enter column names (comma-separated, e.g., Name,Age,City):\n")
  col_names <- strsplit(readline(prompt = ""), ",")[[1]]
  
  df <- data.frame(matrix(ncol = length(col_names), nrow = rows))
  colnames(df) <- col_names
  for (i in 1:rows)
  {
    for (j in 1:length(col_names))
    {
      cat("Enter value for row", i, "column", col_names[j], ":\n")
      val <- readline(prompt = "")
      num_val <- suppressWarnings(as.numeric(val))
      df[i, j] <- if (!is.na(num_val)) num_val else val
    }
  }
  cat("Created DataFrame:\n")
  print(df)
  cat("Dimensions:", dim(df), "\n")
  cat("Summary:\n")
  print(summary(df))
  cat("First column:\n")
  print(df[,1])
}

cat("Choose a data structure to create:\n")
cat("1. Vector\n")
cat("2. List\n")
cat("3. DataFrame\n")
choice <- as.integer(readline(prompt = "Enter choice (1-3): "))

switch(choice,
       `1` = create_vector(),
       `2` = create_list(),
       `3` = create_dataframe(),
       cat("Invalid choice.\n")
)