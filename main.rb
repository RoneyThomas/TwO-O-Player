require '../TwO-O-Player/player'

players = [Player.new('Player 1'), Player.new('Player 2')]

while players[0].lives.positive? && players[1].lives.positive?
  puts '----- NEW TURN -----'
  random_number_1 = rand(1..10)
  random_number_2 = rand(1..10)
  sum = random_number_1 + random_number_2
  players.each do |player|
    puts "#{player.name}: What does #{random_number_1} + #{random_number_2} equal?"
    ans = gets.chomp.to_i
    if ans != sum
      player.reduce_lives
      puts "#{player.name}: Seriously? No!"
      puts "#{players[0].name}: #{players[0].lives}/3 vs #{players[1].name}: #{players[1].lives}/3"
    end
  end
end

if players[0].lives > players[1].lives
  puts "#{players[0].name} wins with a score of #{players[0].lives}/3"
else
  puts "#{players[1].name} wins with a score of #{players[1].lives}/3"
end
puts '----- Game Over -----'
puts 'Good bye!'
