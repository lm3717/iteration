mean_and_sd = function(x) {
  
  return_df = 
    tibble(
      mean = mean(x), 
      sd = sd(x)
    )
  
  return(return_df)
  
}

mean_and_sd(x_vec)