
area_rectangle <- function(length, width) {
  return(length * width)
}

area_square <- function(side) {
  return(side * side)
}

area_circle <- function(radius) {
  return(pi * radius * radius)
}

area_triangle <- function(base, height) {
  return((base * height) / 2)
}


cat("Area Calculator\n")
cat("1. Rectangle\n")
cat("2. Square\n")
cat("3. Circle\n")
cat("4. Triangle\n")


choice <- as.integer(readline(prompt = "Enter your choice (1-4): "))


if (choice == 1) {
  length <- as.numeric(readline(prompt = "Enter length: "))
  width <- as.numeric(readline(prompt = "Enter width: "))
  area <- area_rectangle(length, width)
  cat(sprintf("Area of rectangle: %.2f\n", area))
} else if (choice == 2) {
  side <- as.numeric(readline(prompt = "Enter side length: "))
  area <- area_square(side)
  cat(sprintf("Area of square: %.2f\n", area))
} else if (choice == 3) {
  radius <- as.numeric(readline(prompt = "Enter radius: "))
  area <- area_circle(radius)
  cat(sprintf("Area of circle: %.2f\n", area))
} else if (choice == 4) {
  base <- as.numeric(readline(prompt = "Enter base: "))
  height <- as.numeric(readline(prompt = "Enter height: "))
  area <- area_triangle(base, height)
  cat(sprintf("Area of triangle: %.2f\n", area))
} else {
  cat("Invalid choice. Please enter a number between 1 and 4.\n")
}
