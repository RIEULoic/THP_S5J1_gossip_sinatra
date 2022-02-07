require 'gossip'


class ApplicationController < Sinatra::Base

  get '/' do
    erb :index, locals: {gossips: Gossip.all}
  end

  get '/gossips/new/' do
    erb :new_gossip
  end

  get '/gossips/:id/' do
    erb :show, locals: {gossip: Gossip.find(params["id"])}
  end


  post '/gossips/new/' do
    Gossip.new(params["gossip_author"], params["gossip_content"]).save  #params["id"]
    puts "Salut, je suis le serveur"
    puts "Voici le contenue du hash params : #{params}"
    #puts "Voici ce que l'utilisateur à remplie dans le champ 'author' : #{params["gossip_author"]}"
    #puts "Et voici ce que l'utilisateur à remplie dans le champ 'content' : #{params["gossip_content"]}"
    redirect '/'
  end

end