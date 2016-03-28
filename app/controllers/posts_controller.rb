class PostsController < ApplicationController
	def index
	end

	def new
		@post = Post.new
	end

	def create
		@post = Post.new post_params

		if @post.save
			redirect_to @post, notice: "New Post Created!"
		else
			render 'new', notice: "Woops, Something Went Wrong!"
		end
	end

	private

	def post_params
		params.require(:post).permit(:title, :content)
	end
end
