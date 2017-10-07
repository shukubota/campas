class TagsController < ApplicationController

def new
end


def create
	@page=Page.find(params[:page_id])
	@tag=@page.tags.create(tag_params)
end










private
	def tag_params
		params[:tag.id].permit(:name)
	end



end
