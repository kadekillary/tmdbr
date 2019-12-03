#' Get the changes for a movie
#'
#' By default only the last 24 hours are returned
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing changes for a movie
#' @export
movie_get_changes <- function(imdb_id, section = 'movie') {
  endpoint <- glue::glue('{imdb_id}/changes')
  tibble::as_tibble(request(section, endpoint)$changes)
}
