class Player_moving
  grid_positions = (1..100).to_a

def initialize(position)
  position = grid_positions[0];
  raise "Initial position must be between 1 and 100" unless grid_positions.include?(position)
end

def move(distance_in_meters)
  position += distance_in_meters
end

def play
  if self_status_player == play
  && rand(1..100) < 50 move(rand(1..10))
  else
        move(-rand(1..10))
  end
  end
end

def cheat(position)
  position[101]
end

def status_player
    if position > 100 puts "win"
    elsif position < 0) puts "loose"
    else puts "play"
end

def has_won
  status_player  == win
  end

end

player = Player_moving.new(50)
player.play
puts player.status_Player == :play # true
player.cheat
puts player.hasWon == true

begin
  Player_moving.new(110)
rescue RuntimeError => e
  puts e.to_s == "Initial position must be between 1 and 100" # true
end