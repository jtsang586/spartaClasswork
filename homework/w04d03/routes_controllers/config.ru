require 'sinatra'
require 'sinatra/reloader' if development?
require './controllers/videos_controller.rb'

run VideosController