require 'sinatra/base'

class App < Sinatra::Base

  get '/newteam' do
    erb :newteam
  end

  post '/newteam' do
    @team_name = params["name"]
    @coach = params["coach"]
    @point_guard = params["pg"]
    @shooting_guard = params["sg"]
    @small_forward = params["small_forward"]
    @power_forward = params["pf"]
    @center = params["center"]
    erb :team
  end

end
