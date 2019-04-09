require_relative 'config/environment'

class App < Sinatra::Base

  get '/' do
    erb :index
  end

  get '/new' do
    erb :create_puppy
  end

  post '/puppy' do
    @name = Puppy.new(params[:name])
    @breed = Puppy.new(params[:breed])
    @age = Puppy.new(params[:months_old])
    erb :display_puppy
  end
end
