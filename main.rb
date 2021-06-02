# frozen_string_literal: true

require './character'
require './brave'
require './monster'

brave = Brave.new(name: 'ゆうしゃ', hp: 250, offense: 200, defense: 130)
monsters = [
  Monster.new(name: 'モンスター', hp: 300, offense: 180, defense: 100),
  Monster.new(name: 'ドラゴン', hp: 350, offense: 200, defense: 150)
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

  break if monster.hp <= 0

  monster.attack(brave)

  break if brave.hp <= 0

  current_hp(brave, monster)
end

current_hp(brave, monster)

if monster.hp <= 0
  puts "#{monster.name} をやっつけた！"
elsif brave.hp <= 0
  puts "#{brave.name} はしんでしまった！"
end
