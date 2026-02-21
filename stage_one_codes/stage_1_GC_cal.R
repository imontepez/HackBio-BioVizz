#task 1 -----
GC percentage calculator

#think the process----
#loop to condition to operation

#the main operation---

GC_calculator <- function(input_gene) {
  
  # Split the input string into individual characters
  input_gene <- strsplit(x = input_gene, split = "")[[1]]
  
  # Convert to uppercase for case-insensitivity
  input_gene <- toupper(input_gene)
  
  # Print the length (for debugging)
  print(length(input_gene))
  
  # Count the number of 'G' or 'C' using vectorized sum (more efficient than a loop)
  #gc_counter <- sum(input_gene %in% c('G', 'C'))
  
  # Alternatively, your original loop (uncomment if preferred):
  gc_counter <- 0
  for (i in input_gene) {          #the for loop
    if (i == 'G' | i == 'C') {     #the if condition statement
      gc_counter <- gc_counter + 1
    }
  }
  
  # Return the GC percentage
  return((gc_counter / length(input_gene)) * 100)  #the operation
}


#let's practice----

GC_calculator("gcaTtTta")

