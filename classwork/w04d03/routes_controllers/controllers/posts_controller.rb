class PostsController < Sinatra::Base

    $posts = [{
            id: 0,
            title: 'Post 1',
            content: 'This is the first post'
        },
        {
            id: 1,
            title: 'Post 2',
            content: 'This is the second post'
        },
        {
            id: 2,
            title: 'Post 3',
            content: 'This is the third post'
        }]

    # sets root as the parent-directory of the current file
    set :root, File.join(File.dirname(__FILE__), '..')

    # set the view directory correctly
    set :views, Proc.new {File.join(root, 'views') }

    configure :development do 
        register Sinatra::Reloader
    end

    get '/'do 

        @title = "Blog Posts ----------------"

        @posts = $posts 

        erb :'posts/index'

    end

    get '/new' do 

       "NEW"

       erb :'posts/new'

    end

    get '/:id' do 

        id = params[:id].to_i

        @post = $posts[id]

        # "SHOW: #{params[:id]}"
        erb :'posts/show'

    end

    post '/' do 

        id = $posts.length

        new_post = {
            id: id,
            title: params[:title],
            content: params[:content]
        }

        $posts.push new_post

        redirect "/"

    end

    put '/:id' do 

        "UPDATE #{params[:id]}"

    end

    delete '/:id' do 
        
        "DELETE #{params[:id]}"

    end

    get '/:id/edit' do 

        "EDIT: #{params[:id]}"
        erb :'posts/edit'

    end

end