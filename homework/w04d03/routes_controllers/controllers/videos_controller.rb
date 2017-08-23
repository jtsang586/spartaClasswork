class VideosController < Sinatra::Base

    set :root, File.join(File.dirname(__FILE__), '..')

    set :views, Proc.new{File.join(root, 'views') }

    configure :development do 
        register Sinatra::Reloader
    end

    get '/' do 

        "index"

        # erb :'videos/index'

    end

    get '/new' do

        "NEW"

        # erb :'videos/new'

    end

    get '/:id' do 

        "SHOW"

        # erb :'videos/show'

    end

    post '/' do 

        "CREATE"

    end

    # Need to make index, show and new/create and use Css - bootstrap as bonus



end