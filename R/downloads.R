# download many files
#' downloads
#'
#' インターネットから複数ファイルをダウンロードする。
#'
#' @param f ファイル名　f(.xlsx)　→ f(.csv)
#' @param d 目的のディレクトリー
#' @export
downloads <- function(f,d) {
  for(n in f){
    dest <- paste0( d ,basename(n) )
    download.file( n ,dest )
  }
}
