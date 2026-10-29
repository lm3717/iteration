lotr_import = function(cell_range, movie_title){
  
  lotr_movie_df = 
    read_excel("data/LotR_Words.xlsx", range = cell_range) |> 
    mutate(movie = movie_title) |> 
    janitor::clean_names() |> 
    pivot_longer(
      female:male, 
      names_to = "sex",
      values_to = "words") |>
    mutate(
      race = str_to_lower(race),
      movie = movie_title) |> 
    select(movie, everything())
  
  df
  
  return(lotr_movie_df)
  
}