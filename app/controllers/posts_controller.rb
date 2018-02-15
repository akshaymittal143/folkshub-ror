class PostsController < ApplicationController
    @post = Post.find(params[:id])
end
