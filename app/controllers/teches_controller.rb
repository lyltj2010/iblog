class TechesController < ApplicationController
	before_action :find_tech, only: [:show, :edit, :update, :destroy]
	before_action :authenticate_user!, except: [:index, :show]
	def index
		@teches = Tech.all.order('created_at desc')
	end

	def show
	end

	def new
		@tech = Tech.new
	end

	def create
		@tech = Tech.new tech_params

		if @tech.save
			redirect_to @tech, notice: "New Tech Post Created!"
		else
			render 'new', notice: "Something Went Wrong"
		end
	end

	def edit
	end

	def update
		if @tech.update tech_params
			redirect_to @tech, notice: "Tech Post Updated!"
		else
			render 'edit'
		end
	end

	def destroy
		@tech.destroy
		redirect_to teches_path
	end

	private
	def find_tech
		@tech = Tech.friendly.find(params[:id])	
	end

	def tech_params
		params.require(:tech).permit(:title, :content, :category, :slug)
	end
end
