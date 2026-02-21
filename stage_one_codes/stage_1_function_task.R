
#task 2 

#Protein weight calculator
aa_mw_KDa <- function(input_amino_seq) {
  
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
  
  weight_d <- 0
  
  is_valid <- TRUE  # Simple flag to track if ALL are valid 
  
  for (aa in input_amino_seq) {
    
    if (aa %in% amino_seq) {  
      
      weight_d <- weight_d + aa_masses[[aa]]  # Add incrementally 
      
    } else {
      is_valid <- FALSE # Flag any invalid 
      
      warning ("there is a non-amino acid character, check your input")
    }
  }
  
  
  if (is_valid) {
    
    weight_d <- (weight_d - (length(input_amino_seq) - 1) * 18.02) + 1
    
    weight_in_Kd <- weight_d / 1000
    
  } else {
    
    weight_in_KDa <- 0
  }
  
  return(paste0(weight_in_Kd, "KDa"))
  
}

#aa_mw_KDa("imonte peter c")
aa_mw_KDa("imnte peter c")
