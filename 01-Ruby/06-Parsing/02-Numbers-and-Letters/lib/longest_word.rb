require 'open-uri'
require 'json'

def generate_grid(grid_size)
  #TODO: generate random grid of letters
  grid = []
  grid_size.times { grid << ('A'..'Z').to_a.sample}
  return grid
end


def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result

  time = end_time - start_time

  data = get_data(attempt)

  result = {
    :time => time,
    :score => score(attempt, data, start_time, end_time, grid),
    :translation => translation(data),
    :message => message(data, grid, attempt)
  }
end

def get_data(attempt)
  url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
  result = open(url).read
  return JSON.parse(result)
end

def check_translation(data)
  data["Error"].nil?
end

def check_grid(grid, attempt)
  attempt.chars.all?{|letter| grid.include?(letter)}
end

def score(attempt, data, start_time, end_time, grid)
  if !check_grid(grid, attempt)
    score = 0
  elsif !check_translation(data)
    score = 0
  else
    time = end_time - start_time
    score = (attempt.length)*20 - time
  end
  return score
end

def translation(data)
  if check_translation(data)
    translation = data["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"]
  else
    translation = "no translation"
  end
  return translation
end


def message(data, grid, attempt)
  if !check_grid(grid, attempt)
    message = "You word is not valid (not in the grid)."
  elsif !check_translation(data)
    message = "Your word is no English word."
  else
    message = "Well done!"
  end
  return message
end

