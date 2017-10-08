class UsersController < ApplicationController

    def index
        @users = User.all
        @posts = current_user.posts
    end

end