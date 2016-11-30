require 'sinatra'

#configure sinatra public folder
set :public_folder, File.dirname(__FILE__) + "/public"
get '/' do
  @q = params[:q]
  @current_user = "QQ"
  erb :home
end

get '/home' do
  erb :home
end

get '/sup' do
  puts "THESE ARE MY PARAMS"
  puts params.inspect
  puts params[:hi]   
end

get '/login' do
  erb :login
end

post '/sign-in' do
  puts "sign-in"
  puts "your params are " + params.inspect
end

get '/happy' do
  erb :happy
end

get '/anotherpage' do
  erb :anotherpage
end

get '/test' do
  haml :test
end

get '/contact' do
  erb :contact
end

post '/contact_us' do
  puts "emailing"
  puts "your params are " + params.inspect
  @message = 'Thank you for submitting, we will contact you soon!!'
  erb :contact
end



