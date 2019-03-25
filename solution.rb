require 'sinatra'

get '/makers/:nombre' do
  p params
  @name = params[:nombre]
  erb :nombre
end

get '/makers' do
  p params
  @name = nil
  erb :nombre
end

get "/" do
  "HcUy6Re2LLBRtj"
end

get "/" do
  erb :hola
end

post "/" do
  @name = params[:nombre]
  erb :saludar
end
