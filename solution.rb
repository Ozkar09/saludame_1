require 'sinatra'

contador = 0

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
  @contador = contador
  erb :contador
end

post "/" do
  contador += 1
  @contador = contador
  erb :contador
end

get "/" do
  erb :pares_impares
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
