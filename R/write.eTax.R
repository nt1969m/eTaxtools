# Generate CSV(eTax)
#' write.eTax
#'
#' xlsxからCSV（eTax型式）を作成する。
#'
#' @param  f f(.xlsx)　→ f(.csv)
#' @export
#'
write.eTax <- function( f ) {
  b <- basename(f)
  b3 <- substr(b,1,3) # print(b3)
  r <- 1
  if(b3 == "HOT") { }
  else if(b3 == "HOB") { }
  else if(b3 == "HOI") { }
  else{
    print("Error:Skip this file(HO?.xlsx)")
    return(FALSE)
  }
  s = 1
  if(length( getSheetNames(f) ) > 1 ) s <- 2

  eTax <- read.xlsx(f ,sheet = s ,startRow = r ,colNames = T )

  if(b3 == "HOT"){
    n <- grep("^[[:digit:]]",eTax[ ,4 ])
    eTax <- eTax[ n ,c(5:9) ]
  }
  else {
    n <- grep("^[[:digit:]]",eTax[ ,1 ])
    eTax <- eTax[ n ,]
  }

  Write_eTax( eTax   ,f  )
return(TRUE)
}
NULL
