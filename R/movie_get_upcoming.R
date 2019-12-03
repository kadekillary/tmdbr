#' Get a list of upcoming movies in theatres
#'
#' @param section string : do not alter, sets the section to movies
#' @param page integer : specifies which page of results to query
#'
#' @return tibble : representing upcoming movies to be released
#' @export
movie_get_upcoming <- function(section = 'movie', page = 1) {
  endpoint <- 'upcoming'
  tibble::as_tibble(request(section, endpoint, page = page)$results) %>%
    dplyr::select(title, release_date, overview, popularity, vote_count, vote_average, genre_ids, id)
}
