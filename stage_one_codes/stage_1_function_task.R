
#task 2 

#Protein weight calculator
aa_mw_KDa <- function(input_amino_seq = "imnte peter") {  #using my name as a default input
  
  amino_seq <-  c("A", "R", "N", "D", "C", "E", "Q", "G", "H", "I", "L", "K", "M", "F", "P", "S", "T", "W", "Y", "V")
  
  aa_masses <- c( 
    A = 89.09,            R = 174.20,              N = 132.12, 
    D = 133.10,           C = 121.15,              E = 147.13,
    Q = 146.15,           G = 75.07,               H = 155.16,
    I = 131.18,           L = 131.18,              K = 146.19,
    M = 149.21,           F = 165.19,              P = 115.13,
    S = 105.09,           T = 119.12,              W = 204.23,
    Y = 181.19,           V = 117.15 
  )
  
  #convert to uppercase, match and replace non-letter characters in the input
  input_amino_seq <- gsub("[^A-Z]", "", toupper(input_amino_seq))
  
  
  #split the amino acid input
  input_amino_seq <- strsplit(x = input_amino_seq, split = "")[[1]]
  
  #initialize the calculation loop  
  weight_d <- 0
  
  is_valid <- TRUE  # Simple flag to track if ALL are valid 
  
  for (aa in input_amino_seq) {    # for loop
    
    if (aa %in% amino_seq) {       # IF conditional statement
      
      weight_d <- weight_d + aa_masses[[aa]]  # Add incrementally 
      
    } else {
      is_valid <- FALSE # Flag any invalid 
      
      warning ("there is a non-amino acid character, check your input")
    }
  }
  

  if (is_valid) {
    
    weight_d <- weight_d - (length(input_amino_seq) - 1) * 18.02
    
    weight_in_Kd <- weight_d / 1000
    
  } else {
    
    weight_in_KDa <- 0
  }
  
  return(paste0(weight_in_Kd, "KDa"))
  
}

# Practice -----
#aa_mw_KDa("imonte peter c") #my fullname but would return 0 because it contains a non-amino characeter.
aa_mw_KDa("imnte peter c")

LinkedIn post link:
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

GC_calculator("gcaTTTAT")



#task 2 -----

#Protein weight calculator
aa_mw_KDa <- function(input_amino_seq = "imnte peter") {  #using my name as a default input
  
  amino_seq <-  c("A", "R", "N", "D", "C", "E", "Q", "G", "H", "I", "L", "K", "M", "F", "P", "S", "T", "W", "Y", "V")
  
  aa_masses <- c( 
    A = 89.09,            R = 174.20,              N = 132.12, 
    D = 133.10,           C = 121.15,              E = 147.13,
    Q = 146.15,           G = 75.07,               H = 155.16,
    I = 131.18,           L = 131.18,              K = 146.19,
    M = 149.21,           F = 165.19,              P = 115.13,
    S = 105.09,           T = 119.12,              W = 204.23,
    Y = 181.19,           V = 117.15 
  )
  
  #convert to uppercase, match and replace non-letter characters in the input
  input_amino_seq <- gsub("[^A-Z]", "", toupper(input_amino_seq))
  
  
  #split the amino acid input
  input_amino_seq <- strsplit(x = input_amino_seq, split = "")[[1]]
  
  #initialize the calculation loop  
  weight_d <- 0
  
  is_valid <- TRUE  # Simple flag to track if ALL are valid 
  
  for (aa in input_amino_seq) {    # for loop
    
    if (aa %in% amino_seq) {       # IF conditional statement
      
      weight_d <- weight_d + aa_masses[[aa]]  # Add incrementally 
      
    } else {
      is_valid <- FALSE # Flag any invalid 
      
      warning ("there is a non-amino acid character, check your input")
    }
  }
  

  if (is_valid) {
    
    weight_d <- weight_d - (length(input_amino_seq) - 1) * 18.02
    
    weight_in_Kd <- weight_d / 1000
    
  } else {
    
    weight_in_KDa <- 0
  }
  
  return(paste0(weight_in_Kd, "KDa"))
  
}

# Practice -----
#my fullname but would return 0 because it contains a non-amino characeter.
#aa_mw_KDa("imonte peter c") 

aa_mw_KDa("imnte peter c")

#Essay -----

# Protein Weight Calculator 

*Function To Calculate The Molecular Weight (MW) of a Protein in Kilodalton*

----

## Steps to the Function for Protein MW calculator:

-   Started based the strategy introduced by Mr. Wale; **Loop < Condition < Operation**

-   Began by understanding the details that needs to go into the formular for the calculation (Operation)

-   Wrap the loop with conditions that validates the function works with the expected inputs and processes and produce accurate output/result.

-   Created the function using the **"function()"** in R with object name **"aa_mw_KDa"**.
  
- 	Basically, the function accepts a protein sequence as argument of the function, but has my name **“Peter imonte”** as the default input, validates the contents of the input, calculates the MW of the protein squenece and returns the calculated MW of the protein in kDa if valid, or 0 if it contains non-standard characters.

- 	created a named numeric vector **"amino_seq"** for the 20 standard amino acid single character and their average masses **"aa_masses"**. This is to ensure efficient indexing and validation.
 
- 	For inpput processing and validation, the function converts the character string to uppercase, remove non-letter characters and whitespaces from the argument with ` input_amino_seq <- gsub("[^A-Z]", "", toupper(input_amino_seq)) `.

- 	It splits the input to individual characters with ` strsplit(x = input_amino_seq, split = "")[[1]]  `  to maintain consistency.

-   Initialize the calculation loop and conditonal statement with ` weight_d <- 0 `. 
   
- 	The **“IF”** conditional statement checks for non-standard amino acid sequence in the input and returns “0” where ` is-valid <- FALSE `.

###  The Formula:
    ```
     weight_d <- (weight_d - (length(input_amino_seq) - 1) * 18.02) + 1
         weight_in_Kd <- weight_d / 1000
    ```

-   The calculation was looped through each valid character with it’s average mass , multiplied by the H2o(18.01Da) for N- and C- termini using the vectorized indexing ` weight_d <- weight_d + aa_masses[[aa]] ` and Finally, converted to kDa with ` total_kda <- total_da / 1000 `. 


----

#### Conclusion
The essence of the funcion is to loop the average amino acid masses value for a valid sequence (all characters must be standard amino acids) using the formula for the MW in Da, divide by 1000 convert to kDa and return the final value in KDa or return (0) if any non-standard character is present in the input. The function ensures accuracy, handles edge cases, and adheres to the requirements of default input and invalid character detection.


GitHub link:

https://github.com/imontepez/HackBio-BioVizz/tree/main/stage_one_codes

LinkedIn post:

https://www.linkedin.com/posts/peter-imonte-biomedical-reseacher-data-analyst_linkedin-activity-7431610626621411328-aZW6?utm_source=share&utm_medium=member_desktop&rcm=ACoAAC-RqyABfdeQPTIiWp643QRH0Jgjm02zhZY
 
