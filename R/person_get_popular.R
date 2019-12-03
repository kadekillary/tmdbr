#' Get the list of popular people on TMDb
#'
#' @param person_id string : id for a person
#' @param section string : do not alter, sets the section to persons
#'
#' @return tibble : representing popular people on TMDb
#' @export
person_get_popular <- function(section = 'person', page = 1) {
  endpoint <- 'popular'
  tibble::as_tibble(request(section, endpoint, page)$results) %>%
    dplyr::select(name, popularity, gender, known_for_department, id) %>%
    dplyr::mutate(gender = dplyr::case_when(
      gender == 1 ~ "Female",
      gender == 2 ~ "Male"
    )
  )
}
