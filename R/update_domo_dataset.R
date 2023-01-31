#' Update Dataset in Domo
#'
#' Updates a dataset in the domo instance using the parameters provided
#'
#' @param domo The domo object created in set_up_domo
#' @param df The dataframe object that contains the import data
#' @param dsid  The domo dataset id used to identify the dataset
#' @examples
#' update_domo_dataset(domo, df, '226h46d5-b607-41b3-baf1-47bd669eb621')
#' @export
update_domo_dataset <- function(domo, df, dsid){
  domo$ds_update(df, dsid)
  print('Upload complete')
}
