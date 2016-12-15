require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base



  get '/reverse' do
    erb :reverse
  end

  post '/reverse' do
    @string = params[:string].reverse
    erb :reversed
  end

  get '/friends' do
    @friends = ["Charlie Chaplin", "Richard Pryor", "Eddie Murphy", "Louis CK", "Jerry Seinfeld"]
    erb :friends
  end

end
