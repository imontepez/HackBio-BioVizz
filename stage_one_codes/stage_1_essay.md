# Protein Weight Calculator 

Function To Calculate The Molecular Weight (MW) of a Protein in Kilodalton

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
