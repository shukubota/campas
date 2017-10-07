class TagshowController < ApplicationController
  def index
	@page=Page
	@comment=Comment.all.includes(:page)
	@commentname=Comment.pluck(:body).uniq
	
	if user_signed_in?
		@user=current_user.email
	end


	@counter=Page.count
	ids=REDIS.zrevrange "pages",0,2,withscores: true

	@ids=ids
	@ids_inv=ids.transpose
	@flag=!@ids_inv.empty?

	if @flag
		@pages=@ids_inv[0].map{|id|Page.find(id)}
	end


  end

end
