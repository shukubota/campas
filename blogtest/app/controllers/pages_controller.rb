class PagesController < ApplicationController
  def index
  	@page=Page.all

	if user_signed_in?
		@user=current_user.email
	end
	#if Page.count>0

	
	@counter=Page.count
	ids=REDIS.zrevrange "pages",0,2, withscores: true
	
	@ids=ids
	@ids_inv=ids.transpose
	@flag=!@ids_inv.empty?
	
	if @flag 
		@pages=@ids_inv[0].map{|id|Page.find(id)}
	end	
	
	
  end

  def show
	@page=Page.find(params[:id])

	@user=current_user.email
	#REDIS.zincrby "pages/daily/#{Date.today.to_s}",1,@page.id
	REDIS.zincrby "pages",1,@page.id
	ids=REDIS.zrevrange "pages",0,2, withscores: true
	#@pv=REDIS.get "pages/daily/#{Date.today.to_s}/#{@page.id}"
	
	#@scores=scores
	@ids=ids
	@ids_inv=ids.transpose
	@flag=!@ids_inv.empty?
	
	#@pages=Page.where(id: @ids_inv[0])
	if @flag
		@pages=@ids_inv[0].map{|id|Page.find(id)}
	end
  end


  def new
  	@page=Page.new
  end




	def create
		@page=Page.new(page_params)
		@page.attributes={author: current_user.email}
		@page.save
		redirect_to root_path
	end


	def destroy
		@page=Page.find(params[:id])
		@page.destroy
		REDIS.zrem "pages" ,@page.id
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
