#' Set Up Domo
#'
#' Creates a domo object that will be used to connect to a domo instance
#'
#' @param client_id The client id that for the domo instance
#' @param client_secret The client secret for the domo instance
#' @return A domo class object that can be used to export and import from domo.
#' @examples
#' set_up_domo('client_id', 'client_secret'
#' @export
set_up_domo <- function(client_id, client_secret){
  domo <- rdomo::Domo(client_id=client_id,secret=client_secret)
  return(domo)
}