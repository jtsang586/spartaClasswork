require 'sinatra'
require 'sinatra/reloader' if development?

# get "/" do 
#     "Hello World - Richmond"
# end

get '/books' do
    "INDEX"
end

get '/books/new' do
    "NEW"
end

post '/books' do
    "POST"
end

get '/books:id' do
    "ID"
end
    
get 'booka:id/edit' do 
    'POST'
end

put 'books:id' do
    "Books1"
end

delete 'books:id' do
    'PATCH'
end