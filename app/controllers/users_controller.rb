class UsersController < ApplicationController

	before_filter :find_user, except: [:new, :create, :index]
  before_filter :authorize_user, except: [:new, :create]

  def find_user
    @user = User.find_by_id(params[:id])
  end

  def authorize_user
    logger.info "session[:user_id] = #{session[:user_id]}"
    logger.info "session[:user_id].class = #{session[:user_id].class}"
    logger.info "params[:user_id] = #{params[:id]}"
    logger.info "params[:user_id].class = #{params[:id].class}"
    if session[:user_id].to_s != params[:id]
      redirect_to root_url, notice: "Nice try!"
    end
  end

  def new
    @user = User.new

    respond_to do |format|
      format.html # new.html.erb
      format.json { render json: @user }
    end
  end

  def create
    @user = User.new(params[:user])

    respond_to do |format|
      if @user.save
        session[:user_id] = @user.id
        format.html { redirect_to root_url, notice: 'User was successfully created.' }
        format.json { render json: @user, status: :created, location: @user }
      else
        format.html { render action: "new" }
        format.json { render json: @user.errors, status: :unprocessable_entity }
      end
    end
  end

end
