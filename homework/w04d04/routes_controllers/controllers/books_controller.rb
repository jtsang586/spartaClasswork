class BooksController < Sinatra::Base

    $books = [{
            id: 0,
            title: "Harry Potter"
            author: "JK Rowling"
        },
        {
            id: 1,
            title: "Android's Dream",
            author: "John Scalzi",
        },
        {
            id: 3,
            title: "The Bell Jar",
            author: "Sylvia Plath"
        }
    ]

    set :root, File.join(File.dirname(__FILE__), '..')

    set :views, Proc.new{File.join(root, 'views') }

    configure :development do
        register Sinatra::Reloader
    end

    get '/' do 

        @books = $books

        # erb :'books/index'

    end

    get '/new' do

        "NEW"
        @book = {
            id: "",
            title: "",
            author:""
        }

        # erb :'books/new'

    end

    get ':/id' do 

        id = params[:id].to_i

        @book = $books[id]

        # erb :'books/show'

    end

    post '/' do 

        id = $books.length

        new_book = {
            id: id,
            title: params[:title],
            author: params[:author]
        }

        $books.push new_book

        redirect "/"

    end
end