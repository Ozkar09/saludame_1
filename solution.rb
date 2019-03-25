require 'sinatra'

get '/' do
  p params
  @name = params["nombre"]
  erb :nombre
end
