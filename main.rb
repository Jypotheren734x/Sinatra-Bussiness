require 'sinatra'
require 'pony'

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

get '/contact' do
  erb :contact
end

post '/contact' do
  @name = params[:name]
  @email = params[:email]
  @message = params[:message]
  Pony.mail(
      to: 'komarnickolas@gmail.com',
      from: @email.to_s,
      subject: @name.to_s + "has contacted you",
      body: @message.to_s
  )
end