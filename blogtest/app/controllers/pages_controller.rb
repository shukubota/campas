class PagesController < ApplicationController
  def index
  	@page=Page.all
  end

  def show
	@page=Page.find(params[:id])
	@user=current_user.email
  end


  def new
  	@page=Page.new
  end



	def create
		@page=Page.new(page_params)
		@page.save
		redirect_to root_path
	end


	def destroy
		@page=Page.find(params[:id])
		@page.destroy
		redirect_to root_path
	end


	def edit
		@page=Page.find(params[:id])
	end


	def update
		@page=Page.find(params[:id])
		@page.update(page_params)
		redirect_to root_path	
	end
private
	def page_params
		params[:page].permit(:title,:body)
	end
		


end
