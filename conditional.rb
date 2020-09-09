#encoding: utf-8

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

# 攻撃にランダム要素を入れる
# rand(4)にすると0~3のうちランダムに数字を発生させる
select_attack = rand(4)
if select_attack == 0
  puts "会心の一撃"
  enemy_damege = brave_attack - enemy_defense + rand(20..30)
  enemy_hp = enemy_hp - enemy_damege
else
  puts "通常攻撃"
  enemy_damege = brave_attack - enemy_defense + rand(3..5)
  enemy_hp = enemy_hp - enemy_damege
end

# 敵に与えるダメージと残りHPの表示
puts <<~TEXT
                     敵に#{enemy_damege}のダメージを与えた。
"残りHPは#{enemy_hp}だ。
     TEXT

#残りHPによってリアクションを変える
if enemy_hp > 20
  puts "敵は元気だ"
elsif enemy_hp > 10
  puts "敵はちょっと弱っている"
elsif enemy_hp > 5
  puts "敵はかなり弱っている"
elsif enemy_hp > 0
  puts "敵は瀕死だ"
else
  puts "敵はしんだ"
end

# 攻撃にランダム要素を入れる
# rand(4)にすると0~3のうちランダムに数字を発生させる
select_attack = rand(4)
if select_attack == 0
  puts "会心の一撃"
  brave_damege = enemy_attack - brave_defense + rand(20..30)
  brave_hp = brave_hp - brave_damege
else
  puts "通常攻撃"
  brave_damege = enemy_attack - brave_defense + rand(3..5)
  brave_hp = brave_hp - brave_damege
end

# 敵に与えるダメージと残りHPの表示
puts <<~TEXT
       敵から#{brave_damege}のダメージを受けた。
残りHPは#{brave_hp}だ。
     TEXT

#残りHPによってリアクションを変える
if brave_hp > 20
  puts "勇者は元気だ"
elsif enemy_hp > 10
  puts "勇者はちょっと弱っている"
elsif brave_hp > 5
  puts "勇者はかなり弱っている"
elsif brave_hp > 0
  puts "勇者は瀕死だ"
else
  puts "勇者は死んだ"
end
