require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get ('/') do
  erb(:home)
end

get ('/aigame/:hand1') do
  aihand = ["rock", "paper", "scissors"]
  game = RockPaperScissors.new( params[:hand1], aihand.sample)
  @result = game.play()
  erb( :result )
end

get ('/:hand1/:hand2') do
  game = RockPaperScissors.new( params[:hand1], params[:hand2])
  @result = game.play()
  erb( :result )
end
