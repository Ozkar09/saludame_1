require 'sinatra'

get '/:nombre' do
  p params
  @name = params["nombre"]
  erb :nombre
end

get '/' do
  p params
  @name = nil
  erb :nombre
end
