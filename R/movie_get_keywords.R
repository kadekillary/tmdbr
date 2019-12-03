#' Get the keywords for a movie
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing keywords for a movie
#' @export
movie_get_keywords <- function(imdb_id, section = 'movie') {
  endpoint <- glue::glue('{imdb_id}/keywords')
  tibble::as_tibble(request(section, endpoint)$keywords)
}
