require 'open-uri'
require 'json'

# attr_reader :grid

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  grid = []
  grid_size.times { grid << ('A'..'Z').to_a.sample}
return grid
end


def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  json_url = "http://api.wordreference.com/0.8/80143/json/enfr/apple"
  hash = {}

end
