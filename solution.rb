require 'sinatra'

get '/:nombre' do
  p params
  @name = params["nombre"]
  erb :nombre
end
