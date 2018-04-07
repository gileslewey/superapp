$player_count = 0
$computer_count = 0

what_to_include = %w{r p s}

paper = "p"
rock = "r"
scissors = "s"

def computer_input
  computer = rand(3)
  if computer == 0
    computer = "p"
  elsif computer == 1
    computer = "r"
  else
    computer = "s"
  end
end

while true

puts "Your Score: #{$player_count}, \tComputer Score: #{$computer_count}"
print "Choose rock (r), paper (p), or scissors (s): "
player_input = gets.chomp.downcase

  if player_input == rock && computer_input == scissors
    puts "Player chose rock. \nComputer chose scissors."
    puts "Rock breaks scissors, Player wins the round."
    $player_count += 1

  elsif player_input == rock && computer_input == paper
    puts "Player chose rock. \nComputer chose paper."
    puts "Paper smothers rock, Computer wins."
    $computer_count += 1

  elsif player_input == rock && computer_input == rock
    puts "player chose rock. \nComputer chose rock."
    puts "It's a tie."

  elsif player_input == paper && computer_input == rock
    puts "Player chose paper. \nComputer chose Rock."
    puts "Paper smothers rock, Player wins the round."
    $player_count += 1

  elsif player_input == paper && computer_input == scissors
    puts "Player chose paper. \nComputer chose scissors."
    puts "Scissors cuts paper. Computer wins."
    $computer_count += 1

  elsif player_input == paper && computer_input == paper
    puts "player chose paper. \nComputer chose paper."
    puts "It's a tie."

  elsif player_input == scissors && computer_input == paper
    puts "Player chose scissors. \nComputer chose paper."
    puts "Scissors cuts paper. Player wins."
    $player_count += 1

  elsif player_input == scissors && computer_input == rock
    puts "Player chose rock. \nComputer chose paper."
    puts "Paper smothers rock. Computer wins."
    $computer_count += 1

  elsif player_input == rock && computer_input == rock
    puts "player chose rock. \nComputer chose rock."
    puts "It's a tie."

  else
    puts "Please choose validly."
end

if $player_count == 2
    puts "Player wins!"
    break
  elsif $computer_count == 2
    puts "Computer wins!"
    break
  end
end
