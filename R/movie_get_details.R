#' Get the primary information about a movie
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing primary information for a movie
#' @export
movie_get_details <- function(imdb_id, section = 'movie') {
  response <- request(section, imdb_id)
  genres <- paste(response$genres$name, collapse = ', ')
  production_companies <- paste(response$production_companies$name, collapse = ', ')
  data <- tibble::as_tibble(response[c(
    'title',
    'tagline',
    'budget',
    'revenue',
    'release_date',
    'runtime',
    'status',
    'vote_count',
    'vote_average',
    'popularity',
    'overview',
    'imdb_id',
    'id'
    )
  ])
  data$genres <- genres
  data$production_companies <- production_companies
  return(data)
}
