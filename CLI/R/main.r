# Read data from CSV file
df = read.csv('data.csv')

marks <<- c(df$Mark)

# Create check function to get the vector of grade of corresponding marks

check <- function(mark) {
  if (mark>100){
    return(NULL)
  }
  else if (mark>=80){
    return(4.00)
  }
  else if (mark>=75){
    return(3.75)
  }
  else if (mark>=70){
    return(3.50)
  }
  else if (mark>=65){
    return(3.25)
  }
  else if (mark>=60){
    return(3.00)
  }
  else if (mark>=55){
    return(2.75)
  }
  else if (mark>=50){
    return(2.50)
  }
  else if (mark>=45){
    return(2.25)
  }
  else if (mark>=40){
    return(2.00)
  }
  else if (mark<40){
    return(0.00)
  }
  else {
    return(NULL)
  }
}

res <- c()

for (i in 1:length(marks)){
  res <- c(res, check(marks[i]))
}


# Compute the CGPA
cgpa = sum(df$Credit*res)/sum(df$Credit)

# Print individual subjectwise result
print("-----------------------------------------------------------")
print(paste(df$Course, '(', marks, ')' ,'->', res))
print("-----------------------------------------------------------")
# Print CGPA
print(paste('Your earned CGPA is', '->' ,round(cgpa, digits = 2)))
print("-----------------------------------------------------------")
