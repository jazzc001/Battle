require 'sinatra'
require "sinatra/reloader"

get '/' do
    "Hello, World!"
end

get '/random_cat' do
   @name = ["Hugo", "James", "Mick"].sample
    erb(:index)
end

post '/named_cat' do
  @name, @age = params[:name], params[:age]
  redirect '/form' if @name.to_s.empty? || @age.to_s.empty?
  # p @name
  # p '\n'
  # p @age
   erb(:index)
end

get '/form' do
  p @name
  p '\n'
  p @age
  erb(:form)
end

