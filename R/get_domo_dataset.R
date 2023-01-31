#' Get Domo Dataset
#'
#' Used to retrieve datasets from Domo using a dataset id.
#'
#' @param domo The domo object created in set_up_domo
#' @param dsid The dataset id copied from the Domo instance
#' @return A dataframe object containing the rows and columns from the dataset id.
#' @examples
#' get_domo_dataset(domo, 'c6ef4f5b-h408-4b7b-9792-1f62938e9e56')
#' @export
get_domo_dataset <- function(domo, dsid){
  dataset <- domo$ds_get(dsid)
  return(dataset)
}