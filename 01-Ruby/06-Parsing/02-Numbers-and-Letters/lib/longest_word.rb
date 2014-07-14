require 'open-uri'
require 'json'


def generate_grid(grid_size)
  #TODO: generate random grid of letters
  letters = []
  grid_size.times { letters << ('A'..'Z').to_a.sample }
  letters
end

def run_game(attempt, grid, start_time, end_time)
  #TODO: runs the game and return detailed hash of result
  api_url = "http://api.wordreference.com/0.8/80143/json/enfr/#{attempt}"
  hash = {}

  open(api_url) do |stream|
    hash = JSON.parse(stream.read)
  end

  if hash["Error"] == "NoTranslation"
  hash_result = {
    time: end_time - start_time,
    translation: nil,
    score: 0,
    message: "not an english word"
  }
 elsif is_in_the_grid?(attempt, grid) == false
  hash_result = {
    time: end_time - start_time,
    translation: nil,
    score: 0,
    message: "not in the grid"
  }
  else
      hash_result = {
      time: end_time - start_time,
      translation: hash["term0"]["PrincipalTranslations"]["0"]["FirstTranslation"]["term"],
      score:  (attempt.length * 10) / (end_time - start_time) ,
      message: "well done"
    }
  end
  hash_result
end

def is_in_the_grid?(attempt, grid)

  check = "Hello"
  split_attempt = attempt.upcase.split(%r{\s*})

  split_attempt.each do |letter|
    if grid.include?(letter)
      true
    else
      check = "Haka"
    end
  end
  true if check == "Hello"
  false if check == "Haka"
end
