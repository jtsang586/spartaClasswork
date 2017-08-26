require 'sinatra'
require 'sinatra/reloader' if development?
require 'pg'
require_relative './controllers/monsters_controller.rb'

use Rack::MethodOverride

run MonstersController