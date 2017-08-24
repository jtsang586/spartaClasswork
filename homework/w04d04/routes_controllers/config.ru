require 'sinatra'
require 'sinatra/reloader' if development?
require './controllers/books_controller.rb'

use Rack::Reloader

use Rack::MethodOverride

run BooksController
