class BooksController < ApplicationController

    def index
        render :home
    end

    def delete

        "DELETE"

        redirect_to "/"

    end

    def new
        redirect_to "/"
    end

    def create
    end

    def update
    end

end