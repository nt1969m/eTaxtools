# convert many xlsx to csv
#' converts
#'
#' 複数のエクセル(.xlsx)を(.csv)に変換する。
#'
#' @param d ディレクトリー
#' @export
converts <- function(d) {
    print(d)
  f <- dir( d ,pattern=".xlsx$" ,ignore.case=T )
  for(n in f){
    #print(n)
    write.eTax( paste0( d ,n ) )
  }
}
