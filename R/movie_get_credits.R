#' Get the cast for a movie
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing cast for a movie
#' @export
movie_get_cast <- function(imdb_id, section = 'movie') {
  endpoint <- glue::glue('{imdb_id}/credits')
  tibble::as_tibble(request(section, endpoint)$cast) %>%
    dplyr::select(name, gender, character, order, id) %>%
    dplyr::mutate(gender = dplyr::case_when(
      gender == 1 ~ "Female",
      gender == 2 ~ "Male"
      )
    )
}

#' Get the crew for a movie
#'
#' @param imdb_id string : imdb id for a movie
#' @param section string : do not alter, sets the section to movies
#'
#' @return tibble : representing crew for a movie
#' @export
movie_get_crew <- function(imdb_id, section = 'movie') {
  endpoint <- glue::glue('{imdb_id}/credits')
  tibble::as_tibble(request(section, endpoint)$crew) %>%
    dplyr::select(name, gender, job, department, id) %>%
    dplyr::mutate(gender = dplyr::case_when(
      gender == 1 ~ "Female",
      gender == 2 ~ "Male"
      )
    )
}
