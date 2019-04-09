require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = Puppy.name
    @breed = Puppy.breed
    @months_old = Puppy.months_old
    erb :display_puppy
  end
end
