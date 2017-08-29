class StaticController < ApplicationController
    def home
    end

    def hello
        @name = params[:name]

       respond_to do |format|
            format.json    do
                render json: { message: "Hello, #{@name}" }
            end
        end
    end

    def contact
    end
end