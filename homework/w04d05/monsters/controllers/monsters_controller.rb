class MonstersController < Sinatra::Base 

	set :root, File.join(File.dirname(__FILE__), '..')

	set :views, Proc.new {File.join(root, "views") }

	configure :development do
		register Sinatra::Reloader
	end

	get '/' do
		"Index"
	end

	get '/new' do 
		"NEW"
	end

	get '/:id' do 
		"Show"
	end

	post '/' do 
		"create"
	end

	put '/:id' do 
		"update"
	end

	delete '/:id' do 
		"delete"
	end

	get '/:id/edit' do 
		"edit"
	end

 

end