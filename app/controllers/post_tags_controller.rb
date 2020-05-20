class PostTagsController < ApplicationController


    def index
        @post_tags = PostTag.all
        render({json: @post_tags, status: :ok})    
    end

    def show
        @post_tags = PostTag.find(params[:id])
        render({json: @post_tag, status: :ok})    
    end

    def create
        @post_tag = PostTag.create(post_tag_params)
        render({json: @post_tags, status: :created})    
    end

    def destroy
        @post_tag = PostTag.find(params[:id])
        @post_tag.destroy
        render({json: @post_tag})    
    end

    private

    def post_tag_params
        params.require(:post_tag).permit(:post_id, :hash_tag_id)
    end

end
