class PostsController < ApplicationController

    def index
        @posts = Post.all
        render :json => @posts    
    end

    def show
        @posts = Post.find(params[:id])
        render json: @post    
    end

    def create
        @post = Post.create(post_params)
        render json: @post    
    end

    def destroy
        @post = Post.find(params[:id])
        @post.destroy
        render json: @post    
    end

    private

    def post_params
        params.require(:post).permit(:title, :type, :url, :notes, :user_id)
    end


end
