#' Get the primary person details by id
#'
#' @param person_id string : id for a person
#' @param section string : do not alter, sets the section to persons
#'
#' @return tibble : representing images for a movie
#' @export
person_get_details <- function(person_id, section = 'person') {
  tibble::as_tibble(request(section, person_id)[c(
    'name',
    'birthday',
    'known_for_department',
    'gender',
    'biography',
    'popularity',
    'place_of_birth',
    'imdb_id',
    'id'
  )]) %>%
    dplyr::mutate(gender = dplyr::case_when(
      gender == 1 ~ "Female",
      gender == 2 ~ "Male"
    )
  )
}
