class PostsController < ApplicationController
    def index
        @posts = Post.all.orde("created_at DESC")
    end
    
end
