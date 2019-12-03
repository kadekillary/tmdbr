#' Get the reviews for a movie
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing reviews for a movie
#' @export
movie_get_reviews <- function(imdb_id, section = 'movie') {
  endpoint <- glue::glue('{imdb_id}/reviews')
  tibble::as_tibble(request(section, endpoint)$results)
}
