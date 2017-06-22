require 'sinatra'

set :public_folder, 'public'

get '/' do
  erb :index
end

get '/team' do
  erb :team
end

get '/manufacturers' do
  erb :manufacturers
end
