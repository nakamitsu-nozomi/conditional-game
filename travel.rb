#encoding: utf-8


puts <<~TEXT
旅行プランを選択してください
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）

     TEXT
 plan =gets.to_i

while plan >3

 puts <<~TEXT
 "1~3入力して下さい"  
1. 沖縄旅行（¥10,000）
2. 北海道旅行（¥20,000）
3. 九州旅行（¥15,000）

     TEXT

 plan =gets.to_i
end

 if plan==1
       destination ="沖縄"
       price=10000
       puts "#{destination}旅行ですね、何人で行きますか？"
 elsif plan==2
       destination ="北海道"
       price=20000
       puts "#{destination}旅行ですね、何人で行きますか？"  
 elsif plan==3
       destination ="九州"
       price=15000
        puts "#{destination}旅行ですね、何人で行きますか？"  
 end       

 pepole=gets.to_i
 if pepole>=5
       Count= price * pepole* 90/100
       puts "5人以上なので10%割引となります"
       puts "合計料金:¥#{Count}"
 else
       Count= price* pepole
       puts "合計料金:¥#{Count}"
 end      
