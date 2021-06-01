class Monster < Character
  attr_reader :brave_damage
  
  def appear_message
    puts "#{name} があらわれた！"
  end

    def attack(brave)
    select_attack = rand(4)
    if select_attack == 0
      puts <<~TEXT
      #{name} のこうげき！
      かいしんのいちげき！
      TEXT
      brave_damage = (offense - brave.defense) / + rand(40..50)
    else
      puts <<~TEXT
      #{name} のこうげき！
      つうじょうこうげき
      TEXT
      brave_damage = (offense - brave.defense) / 2 + rand(0..10)
    end
    
    puts "#{brave.name}に #{brave_damage} のダメージをあたえた！"
    brave.hp
    brave.hp -= brave_damage
  end
  
end
