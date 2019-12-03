#' Get a list of similar movies
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#' @param page integer : specifies which page of results to query
#'
#' @return tibble : representing similar movies for initial movie
#' @export
movie_get_similar <- function(imdb_id, section = 'movie', page = 1) {
  endpoint <- glue::glue("{imdb_id}/similar")
  tibble::as_tibble(request(section, endpoint, page = page)$results) %>%
    dplyr::select(title, overview, vote_count, vote_average, popularity, release_date, id)
}
