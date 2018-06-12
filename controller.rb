require('sinatra')
require('sinatra/contrib/all')

require_relative('./models/rock_paper_scissors')
also_reload('./models/*')

get ('/') do
  erb(:home)
end

get ('/:hand1/:hand2') do
  game = RockPaperScissors.new( params[:hand1], params[:hand2])
  @result = game.play()
  erb( :result )
end
