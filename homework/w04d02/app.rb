require 'sinatra'
require 'sinatra/reloader' if development?

get '/games' do 
    "INDEX"
end

get'/games/new' do 
    'NEW'
end

get '/games/:id' do
    "SHOW"
end

post '/games' do 
    "CREATE"
end

get '/games/:id/edit' do
    "EDIT"
end

put '/games/:id' do 
    "UPDATE"
end

delete '/games/:id' do
    "DELETE"
end