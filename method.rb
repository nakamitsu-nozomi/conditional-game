def disp_sum(price,num)
  return "商品の購入数は0以上にしてください" if num <= 0
  "#{price}円の商品を#{num}個買ったので、合計金額は#{price * num}です"

end

puts disp_sum(1000,5)