#' Get the movie credits for a person
#'
#' @param person_id string : id for a person
#' @param section string : do not alter, sets the section to persons
#'
#' @return tibble : representing movie credits for a person
#' @export
person_get_movie_credits <- function(person_id, section = 'person') {
  endpoint <- glue::glue('{person_id}/movie_credits')
  tibble::as_tibble(request(section, endpoint)$cast) %>%
    dplyr::select(title, character, vote_count, vote_average, popularity, release_date, overview, id)
}
