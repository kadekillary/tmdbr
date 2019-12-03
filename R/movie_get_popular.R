#' Get a list of movies in theatres
#'
#' @param page integer : specifies which page of results to query
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing movies now playing
#' @export
movie_get_popular <- function(page = 1, section = 'movie') {
  endpoint <- 'popular'
  tibble::as_tibble(request(section, endpoint, page = page)$results) %>%
    dplyr::select(title, popularity, vote_count, vote_average, overview, release_date, id)
}
