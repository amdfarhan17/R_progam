analyze_csv <- function()
{
  file_path <- readline(prompt = "Enter the path to the CSV file (e.g., 'data.csv'): ")
  if (!file.exists(file_path))
  {
    cat("Error: File not found. Please check the path.\n")
    return( )
  }
  data <- tryCatch(read.csv(file_path, stringsAsFactors = FALSE),
                   error = function(e)
                   {
                     cat("Error reading file:", e$message, "\n")
                     return(NULL)
                   }
  )
  if (is.null(data)) return()
  cat("CSV file loaded successfully.\n")
  cat("Number of rows:", nrow(data), "\n")
  cat("Number of columns:", ncol(data), "\n")
  cat("\nData Structure:\n")
  str(data)
  cat("\nFirst 5 rows:\n")
  print(head(data, 5))
  cat("\nSummary Statistics:\n")
  print(summary(data))
  numeric_cols <- sapply(data, is.numeric)
  if (any(numeric_cols))
  {
    cat("\nNumeric Columns Analysis:\n")
    for (col in names(data)[numeric_cols])
    {
      cat("\nColumn:", col, "\n")
      cat("Mean:", mean(data[[col]], na.rm = TRUE), "\n")
      cat("Median:", median(data[[col]], na.rm = TRUE), "\n")
      cat("Standard Deviation:", sd(data[[col]], na.rm = TRUE), "\n")
      cat("Min:", min(data[[col]], na.rm = TRUE), "\n")
      cat("Max:", max(data[[col]], na.rm = TRUE), "\n")
    }
    if (sum(numeric_cols) >= 2)
    {
      num_cols <- names(data)[numeric_cols]
      cat("\nGenerating scatter plot for first two numeric columns...\n")
      plot(data[[num_cols[1]]], data[[num_cols[2]]],
           xlab = num_cols[1], ylab = num_cols[2],
           main = paste("Scatter Plot:", num_cols[1], "vs", num_cols[2]))
    }
  } else {
    cat("\nNo numeric columns found for detailed analysis.\n")
  }
  cat("\nMissing Values Summary:\n")
  print(colSums(is.na(data)))
}
analyze_csv() 
 