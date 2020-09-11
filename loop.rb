
users=["harry","liam","louis","zahn","niall","nozomi"]
#配列をランダムに並び替える
users.shuffle!
team_a=[]
team_b=[]



users.each.with_index(1) do |user,i|
  #奇数:true 偶数:false
  if i.odd? 
    #配列に要素を格納する
    team_a << user
  else
    team_b <<user
  end
end


text= "チームA\n"
team_a.each do |user|
  text+= "#{user}さん\n"
end

text+="\nチームB\n"
team_b.each do |user|
  text+="#{user}さん\n"
end

puts text

