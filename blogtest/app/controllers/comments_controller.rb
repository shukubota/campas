class CommentsController < ApplicationController
def create
	@page=Page.find(params[:page_id])
	@comment=@page.comments.create(comment_params)
	redirect_to page_path(@page.id)

end


def destroy
	@page=Page.find(params[:page_id])
	@comment=@page.comments.find(params[:id])

	@comment.destroy
	redirect_to page_path(@page.id)
end




private 
	def comment_params
		params[:comment].permit(:body)
	end

end
