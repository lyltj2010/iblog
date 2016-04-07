class TechesController < ApplicationController
	before_action :find_tech, only: [:show, :edit, :update, :destroy]
	def index
		@teches = Tech.all.order('created_at desc')
	end

	def show
	end

	def new
		@tech = Tech.new
	end

	def create
	end

	def edit
	end

	def update
	end

	def destroy
	end

	private
	def find_tech
		@tech = Post.find(params[:id])	
	end

	def tech_params
		params.require(:tech).permit(:title, :content, :category)
	end
end
