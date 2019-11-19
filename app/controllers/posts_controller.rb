class PostsController < ApplicationController
	before_action :find_post, only: [:show, :update, :edit, :destroy]

    def index
        @posts = Post.all.order("created_at DESC")
    end
    
    def new
        @post = Post.new
    end
    
    def create
        @post = Post.new(post_params)

		if @post.save
		flash[:success] = "Post was successfully created"
			redirect_to @post
		else
		flash[:error] = "Something went wrong"
			render 'new'
		end
    end

    def show
        
    end
    
    def update
        @post = Post.find(params[:id])
        if @post.update_attributes(params[:post])
          flash[:success] = "Post was successfully updated"
          redirect_to @post
        else
          flash[:error] = "Something went wrong"
          render 'edit'
        end
    end
    
    def edit
        @post = Post.find([:id])
    end
    
    def destroy
        @post = Post.find(params[:id])
        if @post.destroy
            flash[:success] = 'Post was successfully deleted.'
            redirect_to posts_url
        else
            flash[:error] = 'Something went wrong'
            redirect_to posts_url
        end
    end

    private
    
    def post_params
        params.require(:post).permit(:title, :content)
    end
    
    def find_post
	@post = Post.find(params[:id])
    end


end
