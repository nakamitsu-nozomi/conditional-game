# 勇者のHP
brave_hp = 30
# 勇者の攻撃力
brave_attack = 10
# 通車の防御力
brave_defense = 5
# 敵のHP
enemy_hp = 30
# 敵の攻撃力
enemy_attack = 5
# 敵の防御力
enemy_defense = 10

# 敵に与えるダメージ計算
enemy_damege = brave_attack - enemy_defense
#敵のHPにダメージを与える
enemy_hp = enemy_hp - enemy_damege

# 敵に与えるダメージと残りHPの表示
puts "敵に#{enemy_damege}のダメージを与えた。"
puts "残りHPは#{enemy_hp}だ。"

#残りHPによってリアクションを変える
if enemy_hp>20
  puts "敵は元気だ"
elsif enemy_hp >10
  puts "敵はちょっと弱っている"
  elsif enemy_hp >5
  puts "敵はかなり弱っている"
  elsif enemy_hp >0
  puts "敵は瀕死だ"
  else
  puts "敵はしんだ"
end


# 勇者に与えるダメージ計算
brave_damege = enemy_attack - brave_defense
#敵のHPにダメージを与える
brave_hp = brave_hp - brave_damege

# 敵に与えるダメージと残りHPの表示
puts "敵から#{brave_damege}のダメージを受けた。"
puts "残りHPは#{brave_hp}だ。"
#残りHPによってリアクションを変える
if brave_hp>20
  puts "勇者は元気だ"
elsif enemy_hp >10
  puts "勇者はちょっと弱っている"
elsif brave_hp >5
  puts "勇者はかなり弱っている"
  elsif brave_hp >0
  puts "勇者は瀕死だ"
  else
  puts "勇者はしんだ"
end