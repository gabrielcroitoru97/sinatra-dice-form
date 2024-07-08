require "sinatra"
require "sinatra/reloader"

get("/") do
erb(:home)
end

get("/process_roll") do
  @arr = []
  @dice=params.fetch("dice").to_i
  @sides=params.fetch("sides").to_i
  
  @dice.times do
   @arr.push(rand(1..@sides))
  end

  erb(:process)
end
