#task 1 -----

#think the process----
#loop to condition to operation
gene <- 'gcaTTtat'

gene <- strsplit(x = gene, split = "")[[1]]
print(gene)
gene <- toupper(gene)
print(gene)
print(length(gene))
gc_counter <- 0

for (i in gene) {
  print(i)
  
  if(i  == 'G' | i == 'C')
    gc_counter = gc_counter +1
}

gc_counter/length(gene)*100






#the main operation---
gsub("[^A-Z]", "", seq)

#?toupper()
#?gsub()
#?identical()

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

