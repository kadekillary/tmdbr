#' Send get request and parse response
#'
#' @param url string : representing a link to a resource
#'
#' @return list : containing data from resource
#' @export
get_and_clean <- function(url) {
  response <- httr::GET(url)
  httr::stop_for_status(response)
  response_content <- jsonlite::fromJSON(rawToChar(response$content))

  return(response_content)
}

#' Generate URL endpoint
#'
#' @param section string : sets the section to either movie or person
#' @param endpoint string : endpoint of resource to be referenced
#' @param page integer : specifies which page of results to query
#'
#' @return string : url representing a link to a resource
#' @export
url_builder <- function(section, endpoint, page) {
  api_key <- Sys.getenv('API_KEY')
  if (is.null(page)) {
    base_url <- glue::glue('https://api.themoviedb.org/3/{section}/{endpoint}?api_key={api_key}&country=us')
  } else {
    base_url <- glue::glue('https://api.themoviedb.org/3/{section}/{endpoint}?api_key={api_key}&country=us&page={page}')
  }
  return(base_url)
}

#' Generic request function
#'
#' @param section string : sets the section to either movie or person
#' @param endpoint string : endpoint of resource to be referenced
#' @param page integer : specifies which page of results to query
#'
#' @return list : containing data from resource
#' @export
request <- function(section, endpoint, page = NULL) {
  url <- url_builder(section, endpoint, page)
  get_and_clean(url)
}

#' Download all images from a column
#'
#' @param images character : url's to various images to download
#'
#' @return all images downloaded in local repository
#' @export
download_all_images <- function(images) {
  remove_link <- 'http://image.tmdb.org/t/p/original/'
  invisible(lapply(images, function(x) download.file(x, gsub(remove_link, '', x), mode = 'wb')))
}
