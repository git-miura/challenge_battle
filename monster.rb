# frozen_string_literal: true
class Monster < Character
  def appear_message
    puts "#{@name} があらわれた！"
  end

  def attack(brave)
    select_attack = rand(4)
    if select_attack.zero?
      puts <<~TEXT
        #{@name} のこうげき！
        かいしんのいちげき！
      TEXT
      brave_damage = offense - brave.defense + rand(40..50)
    else
      puts <<~TEXT
        #{@name} のこうげき！
        つうじょうこうげき
      TEXT
      brave_damage = offense - brave.defense + rand(0..10)
    end
    puts "#{brave.name}は #{brave_damage} のダメージをうけた！"
    brave.hp -= brave_damage
    brave.hp = 0 if brave.hp <= 0
  end
end
