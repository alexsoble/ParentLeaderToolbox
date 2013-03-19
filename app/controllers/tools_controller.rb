class ToolsController < ApplicationController

	def show
		@tool = Tool.find(params[:id])
		@comments = Comment.where(tool_id: params[:id])
	end
	
end
