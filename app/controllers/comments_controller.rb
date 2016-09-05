class CommentsController < ApplicationController
	def index
	end
	
	def new
		@comment = Comment.new(commenter: params[:commenter_p], body: params[:body_p])
		@comment.save
		redirect_to 'welcome/index'
	end

	def show
		@comments = Comment.all
	end

	def update
		@comment = Comment.where()
	end

	def destroy

	end
end
