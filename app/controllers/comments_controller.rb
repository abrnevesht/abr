# encoding: utf-8
class CommentsController < ApplicationController
	def new
		render layout: "welcome_layout"
	end
	def show
		@comment = Comment.find(params[:id])
	end
	def create
		#render plain: params[:comment].inspect
		UserMailer.comment_email(params[:comment].inspect)#.deliver_now
		@comment = Comment.new(params.require(:comment).permit(:text))
		#!!!!!!!redirect_to bayad az comment dar biaaaaaaaaaad
		#redirect_to :controller => 'mags', :action => 'show', :id =>params[:id]
		#@comment.save
	end
end
