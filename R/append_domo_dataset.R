#' Create Dataset in Domo
#'
#' Creates a dataset in the domo instance using the parameters provided. 
#' When called again, will continue to append the results to the created dataset.
#'
#' @param domo The domo object created in set_up_domo
#' @param df The dataframe object that contains the import data
#' @param ds_name The name that the dataset will be called
#' @param ds_description An optional description of the dataset 
#' @return The id generated for the dataset created.
#' @examples
#' append_domo_dataset(domo, df1, 'Test', 'Generated for a Test')
#' append_domo_dataset(domo, df2, 'Test', 'Generated for a Test')
#' @export
append_domo_dataset <- function(domo, df, ds_name, ds_description) {
  dataset_id <- domo$ds_create(df, ds_name, ds_description, method= 'APPEND')
  return(dataset_id)
}