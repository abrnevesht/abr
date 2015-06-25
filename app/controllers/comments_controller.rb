class CommentsController < ApplicationController
	def new
	end
	def show
		@comment = Comment.find(params[:id])
	end
	def create
		render plain: params[:comment].inspect
		#UserMailer.comment_email(params[:comment].inspect).deliver_now
		UserMailer.alaki.deliver_now

		#@comment = Comment.new(params.require(:comment).permit(:text))
		#@comment.save
	end
end
