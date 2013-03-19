class CommentsController < ApplicationController
  
  def create
    @comment = Comment.new(params[:comment])

    respond_to do |format|
    	if session[:user_id].present?
	      if @comment.save
	        format.html { redirect_to "/tools/#{@comment.tool_id}", notice: 'Comment was successfully created.' }
	        format.json { render json: @comment, status: :created, location: @comment }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @comment.errors, status: :unprocessable_entity }
	      end
	    else
        format.html { redirect_to "/tools/#{@comment.tool_id}", notice: 'Please login to comment' }
	    end
	  end
  end

end
