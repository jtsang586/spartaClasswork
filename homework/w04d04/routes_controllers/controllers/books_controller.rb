class BooksController < Sinatra::Base

    $books = [{
            id: 0,
            title: "Harry Potter: Philosopher's Stone",
            author: "JK Rowling",
            blurb: "When mysterious letters start arriving on his doorstep, Harry Potter has    never heard of Hogwarts School of Witchcraft and Wizardry.
                    They are swiftly confiscated by his aunt and uncle.

                    Then, on Harry’s eleventh birthday, a strange man bursts in with some important news: Harry Potter is a wizard and has been awarded a place to study at Hogwarts.

                    And so the first of the Harry Potter adventures is set to begin."
        },
        {
            id: 1,
            title: "Android's Dream",
            author: "John Scalzi",
            blurb:"A human diplomat kills his alien counterpart. Earth is on the verge of war with a vastly superior alien race. A lone man races against time and a host of enemies to find the one object that can save our planet and our people from alien enslavement...
                    A sheep."
        },
        {
            id: 2,
            title: "The Bell Jar",
            author: "Sylvia Plath",
            blurb: "When Esther Greenwood wins an internship on a New York fashion magazine in 1953, she is elated, believing she will finally realise her dream to become a writer. But in between the cocktail parties and piles of manuscripts, Esther's life begins to slide out of control. She finds herself spiralling into serious depression as she grapples with difficult relationships and a society which refuses to take her aspirations seriously. "
        }]

    set :root, File.join(File.dirname(__FILE__), '..')

    set :views, Proc.new{File.join(root, 'views') }

    configure :development do
        register Sinatra::Reloader
    end

    get '/' do 

        @books = $books

        "INDEX"

        erb :'books/index'

    end

    get '/new' do

        "NEW"
        @book = {
            id: "",
            title: "",
            author:"",
            blurb:""
        }

        erb :'books/new'

    end

    get '/:id' do 

        id = params[:id].to_i

        @book = $books[id]

        erb :'books/show'

    end

    post '/' do 

        id = $books.length

        new_book = {
            id: id,
            title: params[:title],
            author: params[:author],
            blurb: params[:blurb]
        }

        $books.push new_book

        redirect "/"

    end

    put '/:id' do 

        id = params[:id].to_i

        book = $books[id]

        book[:title] = params[:title]

        book[:author] = params[:author]

        book[:blurb] = params[:blurb]

        $books[id] = book;

        redirect '/'

    end

    delete '/:id' do 

        id = params[:id].to_i

        $books.delete_at(id)

        redirect "/"

    end


    get '/:id/edit' do 

        id = params[:id].to_i

        @book = $books[id]

        erb :'books/edit'
    end
end