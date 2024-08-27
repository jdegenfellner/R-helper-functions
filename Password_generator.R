library(stringi)

generate_password <- function(n, length) {
  special_chars <- "!@#$%^&*()_-+=<>?"
  
  add_specials <- function() {
    paste0(
      stri_rand_strings(1, 1, pattern = "[A-Z]"),  # One uppercase
      stri_rand_strings(1, 1, pattern = "[a-z]"),  # One lowercase
      stri_rand_strings(1, 1, pattern = "[0-9]"),  # One digit
      sample(special_chars, 1),                    # One special character
      stri_rand_strings(1, length - 4, pattern = "[A-Za-z0-9]")
    )
  }
  
  replicate(n, add_specials())
}

generate_password(n = 2, length = 12)