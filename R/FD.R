# Generate CSV(eTax)
#' Write_eTax
#'
#' 行列からeTax型式のCSVを作成する。
#'
#' @param df 行列
#' @param  f ファイル名　f(.xlsx)　→ f(.csv)
# #' @importFrom  utils write.table
#' @export
#'
Write_eTax <- function( df ,f ) {
  f_csv <- gsub( ".xlsx" ,".csv" ,f )
  print( f_csv )
  write.table(
    df
    ,f_csv
    ,quote=F
    ,sep=","
    ,row.names=F
    ,col.names=F
    ,eol="\r\n"
    ,na=""
    ,fileEncoding="CP932"
  )
}
NULL
