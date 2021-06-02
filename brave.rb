# frozen_string_literal: true
class Brave < Character
  def attack(monster)
    select_attack = rand(8)
    if select_attack.zero?
      puts <<~TEXT
        #{@name} のこうげき！
        かいしんのいちげき！
      TEXT
      monster_damage = offense - monster.defense + rand(40..50)
    else
      puts <<~TEXT
        #{@name} のこうげき！
        つうじょうこうげき
      TEXT
      monster_damage = offense - monster.defense + rand(0..10)
    end
    puts "#{monster.name}に #{monster_damage} のダメージをあたえた！"
    monster.hp -= monster_damage
    monster.hp = 0 if monster.hp <= 0
  end
end
