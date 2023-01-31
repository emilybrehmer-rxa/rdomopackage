#' Create Dataset in Domo
#'
#' Creates a dataset in the domo instance using the parameters provided
#'
#' @param domo The domo object created in set_up_domo
#' @param df The dataframe object that contains the import data
#' @param ds_name The name that the dataset will be called
#' @param ds_description An optional description of the dataset 
#' @return The id generated for the dataset created.
#' @examples
#' create_domo_dataset(domo, df, 'Test', 'Generated for a Test')
#' @export
create_domo_dataset <- function(domo, df, ds_name, ds_description= ''){
  dataset_id <- domo$ds_create(df, ds_name, ds_description)
  return(dataset_id)
}