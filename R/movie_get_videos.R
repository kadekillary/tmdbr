#' Get the videos for a movie
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing videos for a movie
#' @export
movie_get_videos <- function(imdb_id, section = 'movie') {
  endpoint <- glue::glue('{imdb_id}/videos')
  tibble::as_tibble(request(section, endpoint)$results) %>%
    dplyr::mutate(url = paste0('https://www.youtube.com/watch?v=', key)) %>%
    dplyr::select(name, type, site, url, id)
}
