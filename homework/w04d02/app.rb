require 'sinatra'
require 'sinatra/reloader' if development?
require 'sinatra'
require 'sinatra/reloader' if development?

get '/games' do 
    "INDEX"
end

get'/games/new' do 
    'NEW'
end
