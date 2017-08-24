require 'sinatra'
require 'sinatra/reloader' if development?
require './controllers/posts_controller.rb'

run PostsController