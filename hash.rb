people=[{name:"田中",age:30,length:160},
   {name:"佐藤",age:70,length:150},
   {name:"鈴木",age:10,length:120}]




people.each do |person|
      puts "-----------------------"
      puts "#{person[:name]}さん"
      if person[:age]<=64
        puts "年齢 #{person[:age]}才：年齢確認OK"
      else
        puts "年齢 #{person[:age]}才：年齢確認NG"
      end
      if person[:length]>=130
         puts "身長 #{person[:length]}cm：身長確認OK"
      else
        puts "身長 #{person[:length]}cm：身長確認OK"
      end

      if person[:age]=64 && person[:length]>=130
        puts "ご利用頂けます"
      else
          puts "ご利用頂けません"
      end  
end

