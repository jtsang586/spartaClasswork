class MonstersController < Sinatra::Base 

	set :root, File.join(File.dirname(__FILE__), '..')

	set :views, Proc.new {File.join(root, "views") }

	configure :development do
		register Sinatra::Reloader
	end

	get '/' do

		@title = "Monster entries"

		@monsters = Monster.all 

		erb :'monsters/index'
	end

	get '/new' do 
		@monster = Monster.new
		@monster.id = ""
		@monster.title = ""
		@monster.description = ""

		erb :'monsters/new'
	end

	get '/:id' do 
		"Show"
		id = params[:id].to_i

		@monster = Monster.find id

		erb :'monsters/show'
	end

	post '/' do 
		monster = Monster.new
		monster.title = params[:title]
		monster.description = params[:description]

		monster.save

		redirect "/"
	end

	put '/:id' do 

		id = params[:id].to_i
		monster = Monster.find id

		monster.title = params[:title]
		monster.description = params[:description]

		monster.save

		redirect '/'
	end

	delete '/:id' do 
		
		id = params[:id].to_i

		Monster.destroy id

		redirect '/'
	end

	get '/:id/edit' do 
		
		id = params[:id].to_i

		@monster = Monster.find id

		erb :'monsters/edit'
	end
end