class Brave < Character
  attr_reader :monster_damage

  
  def attack(monster)
    select_attack = rand(8)
    if select_attack == 0
      puts <<~TEXT
      #{name} のこうげき！
      かいしんのいちげき！
      TEXT
      monster_damage = (offense - monster.defense) / 2 + rand(40..50)
    else
      puts <<~TEXT
      #{@name} のこうげき！
      つうじょうこうげき
      TEXT
      monster_damage = (offense - monster.defense) / 2 + rand(0..10)
    end
    
    puts "#{monster.name}に #{monster_damage} のダメージをあたえた！"
    monster.hp -= monster_damage
  end

end
