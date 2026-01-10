read_dataframe <- function(name)
{
  cat(sprintf("Enter details for %s:\n", name))
  num_rows <- as.integer(readline(prompt = "Enter number of rows: "))
  num_cols <- as.integer(readline(prompt = "Enter number of columns: "))
  col_names <- c()
  for (i in 1:num_cols)
  {
    col_name <- readline(prompt = sprintf("Enter name for column %d: ", i))
    col_names <- c(col_names, col_name)
  }
  df <- data.frame(matrix(ncol = num_cols, nrow = num_rows))
  colnames(df) <- col_names
  for (i in 1:num_rows)
  {
    for (j in 1:num_cols)
    {
      value <- readline(prompt = sprintf("Enter value for row %d, column '%s': ", i, col_names[j]))
      df[i, j] <- ifelse(!is.na(as.numeric(value)), as.numeric(value), value)
    }
  }
  return(df)
}
df1 <- read_dataframe("Data Frame 1")
df2 <- read_dataframe("Data Frame 2")
cat("\nData Frame 1:\n")
print(df1)
cat("\nData Frame 2:\n")
print(df2)
if (nrow(df1) == nrow(df2))
{
  df_combined_columns <- cbind(df1, df2)
  cat("\nData Frame after joining columns with cbind():\n")
  print(df_combined_columns)
} else
{
  cat("\nError: Cannot join columns with cbind() - number of rows do not match.\n")
}
if (all(colnames(df1) == colnames(df2)) && length(colnames(df1)) == 
    length(colnames(df2))) {
  df_combined_rows <- rbind(df1, df2)
  cat("\nData Frame after joining rows with rbind():\n")
  print(df_combined_rows)
} else
{
  cat("\nError: Cannot join rows with rbind() - column names or number of columns do not match.\n")
}