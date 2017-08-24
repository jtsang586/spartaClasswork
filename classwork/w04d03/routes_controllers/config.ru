require 'sinatra'
require 'sinatra/reloader' if development?
require './controllers/posts_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run PostsController