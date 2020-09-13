require "csv"
require "pry"
list=[]
CSV.foreach("okinawa_area.csv",headers: true) do |row|
  list << { id: row["id"].to_i ,country: row["郡"],city: row["市区町村"],area: row["面積"].to_f}
end 


 

#id が 6 のデータ
  p list.find{|data|data[:id]==6 }
#南大東村 のデータ
  p list.find{|data|data[:city]=="南大東村"}
#面積 が 100 以上の全データ
  p list.find_all{|data| data[:area]>=100}
#中頭郡 の全データ
  nakagami_list= list.find_all{|data| data[:country]=="中頭郡"}
  p nakagami_list

#中頭郡 の全市町村の配列
 p nakagami_list.map { |data| data[:city] }
#中頭郡 の総面積
 puts nakagami_list.sum { |data| data[:area] }


 