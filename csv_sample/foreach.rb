require "csv"
require "pry"
list=[]
CSV.foreach("okinawa_area.csv",headers: true) do |row|
  binding.pry
  row

row[:id]
row["id"]
row["id"].to_i

row["郡"]
row["市区町村"]

row["面積"]
row["面積"].to_f

  list << { id: row["id"].to_i ,country: row["郡"],city: row["市区町村"],area: row["面積"].to_f}
end 
p list

 