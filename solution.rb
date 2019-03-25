require 'sinatra'

get '/:name' do
  @name = params[:name]

  erb :nombre
end
