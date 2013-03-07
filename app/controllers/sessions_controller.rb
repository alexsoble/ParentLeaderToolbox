class SessionsController < ApplicationController

	def new
  end

  def create
    u = User.find_by_email(params[:email])
    if u.present?
      if u.authenticate(params[:password])
        session[:user_id] = u.id
        redirect_to root_url, notice: "You've been logged in"
      end
    else
      redirect_to '/signin', notice: 'Incorrect sign-in information. Please try again, or sign up for a free account.'
    end
  end

  def destroy
    reset_session
    redirect_to root_url, notice: "You've been logged out"
  end

end
