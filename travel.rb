#encoding: utf-8

#  関数


 def  travel(destination,price)
  puts "#{destination}旅行ですね、何人で行きますか？"  
  pepole=gets.to_i
  if pepole>=5 
       puts "5人以上なので10%割引となります"
       puts "合計料金:¥#{price * pepole* 90/100}"
  else
       puts "合計料金:¥#{price* pepole}"
  end     
 end  

#  内容
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
       travel("沖縄",10000)
 elsif plan==2
       travel("北海道",20000)
 elsif plan==3
       travel("九州",15000)
       
 end       

 

 

 





 