library(testthat)
library(eTaxtools)

# 財務諸表の標準フォーム（令和2年4月１日以後提出分）
f <- c(
   "https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho3/1/HOT010_3.0_BS_10.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho3/2/HOT010_3.0_PL_10.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho3/3/HOT010_3.0_SS.xlsx"
)
dir.create( "./inst" )
dir.create( "./inst/extdata" )
d <- "./inst/extdata/HOT/"  # 財務諸表
dir.create( d )
downloads(f,d)
converts(d)

#勘定科目内訳明細書の標準フォーム等
#(平成31年4月1日以後終了事業年度分)
f <- c(
   "https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI010_4.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI060_4.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI100_5.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI110_3.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI130_5.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI141_5.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI150_3.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/2/HOI160_3.0_.xlsx"
   )
d <- "./inst/extdata/HOI/"  # 勘定科目内訳明細書
dir.create( d )
downloads(f,d)
converts(d)

#法人税申告書別表等(明細記載を要する部分)の標準フォーム等
#(令和2年4月1日以後終了事業年度又は連結事業年度分)
f <- c(
   "https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/5/HOB016_6.0_.xlsx"
  ,"https://www.e-tax.nta.go.jp/hojin/gimuka/csv_jyoho2/5/HOB800_15.0_.xlsx"
  )
d <- "./inst/extdata/HOB/"  # 法人税申告書別表等(明細記載を要する部分)
dir.create( d )
downloads(f,d)
converts(d)

test_check("eTaxtools")
