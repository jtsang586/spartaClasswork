class VideosController < Sinatra::Base

    $videos = [{
            id: 0,
            title: 'Monster Hunter World',
            url: 'https://www.youtube.com/embed/ULqY6yXn2S4'
        },
        {
            id: 1,
            title: 'Dragon Ball Fighterz',
            url: 'https://www.youtube.com/embed/SXrtRkggS60'
        },
        {
            id: 2,
            title: 'Age of Empire 4',
            url: 'https://www.youtube.com/embed/RYwZ6GZXWhA'
        }
    ]

    set :root, File.join(File.dirname(__FILE__), '..')

    set :views, Proc.new{File.join(root, 'views') }

    configure :development do 
        register Sinatra::Reloader
    end

    get '/' do 

        @title = "Video game video directory"

        @videos = $videos

        erb :'videos/index'

    end

    get '/new' do

        "NEW"

        erb :'videos/new'

    end

    get '/:id' do 

        id = params[:id].to_i

        @video = $videos[id]

        "SHOW"

        erb :'videos/show'

    end

    post '/' do 

        id = $videos.length

        new_video = {
            id: id,
            title: params[:title],
            url: params[:url]
        }

        puts new_video
        puts $videos

        $videos.push new_video

        redirect "/"
    end

    # Need to make index, show and new/create and use Css - bootstrap as bonus



end