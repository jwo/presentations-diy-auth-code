class SessionsController < ApplicationController
  def new
  end

  def create
    @current_user = User.find_by username: params[:username]
    if @current_user && @current_user.authenticate(params[:password])
      # YAY, LETS SIGN IN
      session[:user_id] = @current_user.id

      # make a decision WHERE to redirect them to
      if session[:redirect_to].present?
        redirect_to session[:redirect_to]
      else
        redirect_to root_path
      end
      session.delete(:redirect_to)
    else
      render :new
    end
  end

  def delete
    # session[:user_id] = nil
    reset_session
    redirect_to root_path
  end
end
