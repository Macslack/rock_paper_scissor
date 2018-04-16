require('sinatra')
require('pry')
require('sinatra/contrib/all') if development?
also_reload('./models/*')

require_relative("./models/rock_paper_scissors.rb")


get '/' do
  erb (:home)
end



get '/game/:rock/:paper/' do
  @game = RockPaperScissors.game(params[:hand1], params[:hand2])
  erb(:result)
end

get '/game/rock/scissors' do
  "scissors beats rock player one wins"
end

get '/game/rock/rock' do
  "Draw no winner"
end

get '/game/paper/rock' do
  "rock beats paper player two wins"
end

get '/game/paper/paper' do
  "Draw no winner"
end

get '/game/paper/scissors' do
  "scissors beats paper player two wins"
end

get '/game/scissors/rock' do
  "rock beats scissors player two wins"
end

get '/game/scissors/paper' do
  "scissors beats paper player one wins"
end

get '/game/scissors/scissors' do
  "Draw no winner"
end
