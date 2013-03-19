class ToolstarsController < ApplicationController

  def create
    @toolstar = Toolstar.new(params[:toolstar])

    respond_to do |format|
    	if session[:user_id].present?
	      if @toolstar.save
	        format.html { redirect_to "/tools/#{@toolstar.tool_id}", notice: 'Tool saved.' }
	        format.json { render json: @toolstar, status: :created, location: @toolstar }
	      else
	        format.html { render action: "new" }
	        format.json { render json: @toolstar.errors, status: :unprocessable_entity }
	      end
	    else
        format.html { redirect_to "/tools/#{@toolstar.tool_id}", notice: 'Please login to add tools to your toolbox.' }
	    end
	  end
  end	

end
