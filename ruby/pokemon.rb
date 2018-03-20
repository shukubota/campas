class Pokemon
  attr_accessor :name
  attr_accessor :hp
  attr_accessor :attack
  def initialize(name: ,hp: ,attack:)
    self.name = name
    self.hp = hp
    self.attack = attack
  end
end


def battle(pokemon1, pokemon2)
  if pokemon1.attack > pokemon2.attack
    winner = pokemon1
    loser = pokemon2
  else
    winner = pokemon2
    loser = pokemon1
  end

  puts '******'
  puts '戦闘開始'
  puts '******'
  battle_num = 1
  while loser.hp > 0.0 do
    loser.hp -= winner.attack
    puts '----'
    puts '第' + battle_num.to_s + '戦'
    puts '----'
    puts pokemon1.name + 'の残りHP: ' + pokemon1.hp.to_s
    puts pokemon2.name + 'の残りHP: ' + pokemon2.hp.to_s
    sleep(1.0)
    battle_num += 1
  end

  sleep(2.0)
  puts '******'
  puts '決着!!!'
  puts '******'
  puts loser.name + '瀕死、、' + winner.name + 'の勝利!!'
end


pika = Pokemon.new(name: "ピカチュウ", hp: 30, attack: 8)
zeni = Pokemon.new(name: "ゼニガメ", hp: 34, attack: 11)

battle(pika,zeni)
