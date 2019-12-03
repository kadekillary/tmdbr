#' Get the images for a movie
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing images for a movie
#' @export
movie_get_images <- function(imdb_id, section = 'movie') {
  endpoint <- glue::glue('{imdb_id}/images')
  tibble::as_tibble(request(section, endpoint)$backdrops) %>%
    dplyr::mutate(url = paste0('http://image.tmdb.org/t/p/original', file_path)) %>%
    dplyr::select(url, vote_count, vote_average, width, height, aspect_ratio)
}
