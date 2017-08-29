require 'sinatra'
require './scraper.rb'

get '/' do
   find_job
  # File.open(File.join("public", "hello.html
end

get '/sinatra' do
  "Hello Sinatra"
end
