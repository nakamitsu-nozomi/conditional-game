require "csv"

list=CSV.read("okinawa_area.csv",headers: true).map do |row|
 {id: row["id"].to_i,country: row["郡"],city: row["市区町村"],area: row["面積"].to_f}
end
p list


