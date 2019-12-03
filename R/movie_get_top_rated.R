#' Get top rated movies
#'
#' @param section string : do not alter, sets the section to movies
#' @param page integer : specifies which page of results to query
#'
#' @return tibble : representing top rated movies
#' @export
movie_get_top_rated <- function(section = 'movie', page = 1) {
  endpoint <- 'top_rated'
  tibble::as_tibble(request(section, endpoint, page = page)$results) %>%
    dplyr::select(title, overview, vote_count, vote_average, release_date, genre_ids, id)
}
