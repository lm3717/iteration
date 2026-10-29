#' sim_mean_sd
#' 
#' SImulates data and generatees a df with the mean and sd
#'
#' @param n_obs sample size
#' @param mu true mean
#' @param sigma true sd
#'
#' @returns df with mean and sd

sim_mean_sd = function(n_obs, mu, sigma) {
  
  sim_df =
    tibble(
      x = rnorm(n = n_obs, mean = mu, sd = sigma)
    )
  
  
  return_df = 
    sim_df |> 
    summarise(
      mean = mean(x),
      sd = sd(x)
    )
  
  return(return_df)
  
}