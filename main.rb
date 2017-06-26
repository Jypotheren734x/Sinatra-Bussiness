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

get '/thankyou' do
  erb :thankyou
end

post '/thankyou' do
  @name = params[:name]
  @email = params[:mail]
  @subject = params[:subject]
  @message = params[:message]
  Pony.mail(:to => 'komarnickolas@gmail.com', :from => @email, :subject => @subject, :body => @message, :via => 'sendmail')
  redirect :thankyou
end