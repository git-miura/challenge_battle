require "./3_class"
require "./3_brave"
require "./3_monster"

brave = Brave.new(name: "ゆうしゃ", hp: 250, offense: 200, defense: 130)
monsters = [
monster1 = Monster.new(name: "モンスター", hp: 300, offense: 180, defense: 100),
monster2 = Monster.new(name: "ドラゴン", hp: 450, offense: 250, defense: 200)
]

monster = monsters.sample

def current_hp(brave, monster)
  puts <<~TEXT
  *=*=*=*=*=*=*=*=*=*=*
  【#{brave.name}】HP: #{brave.hp}
  【#{monster.name}】HP: #{monster.hp}
  *=*=*=*=*=*=*=*=*=*=*
  TEXT
end


monster.appear_message

loop do
brave.attack(monster)

if  monster.hp <= 0
  monster.hp = 0
  current_hp(brave, monster)
  puts "#{monster.name} をやっつけた！"
  break
end

monster.attack(brave)

if brave.hp <= 0
  puts "#{brave.name} はしんでしまった！"
  brave.hp = 0
  current_hp(brave, monster)
  break
end

current_hp(brave, monster)

end
