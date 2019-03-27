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
  if request.env["permiso"] == "soy-un-token-secreto"
    "Si lo logramos!" + 'to include "Si lo logramos!"'
  else
    "Sin Permiso"
  end
end

get "/" do
  "User-Agent: Mozilla/5.0 (X11; Ubuntu; Linux x86_64; rv:66.0) Gecko/20100101 Firefox/66.0" + ' to include "Chrome"'
end

get "/" do
  erb :abuela_sorda
end

post "/" do
  @frase = params["frase"]

  if params["frase"] == params["frase"].upcase
    @respuesta_abuela = "Ahhh si, manzanas!"
  else
    @respuesta_abuela = "Habla más duro mijito"
  end

  erb :respuesta_abuela
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
