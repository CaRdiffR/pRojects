#' Create Package from Swagger API
#'
#' @param name Project
#' @param dir Directory to create
#' @param url URL or path to swagger JSON specification
#' @param overwrite Should we overwrite `dir` if it exists? (default: FALSE)
#'
#' @return path to the newly created package path
#' @export
#'
#' @examples
#' \dontrun{
#'   createSwaggerProject("petstore",
#'       dir = getwd(),
#'       url = "http://petstore.swagger.io/v2/swagger.json")
#' }
createSwaggerProject <- function(name,
                                 dir = name,
                                 url,
                                 overwrite = FALSE){
  swag(spec = url, pkg_name = name, target_dir = dir, overwrite = overwrite)
}
