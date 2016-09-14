class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  before_action do
    @current_user = User.find_by id: session[:user_id]
  end

  def authenticate_user!
    if @current_user.nil?
      session[:redirect_to] = request.path # /products
      redirect_to sign_in_path
    end
  end

  def current_user
    @current_user
  end
  helper_method :current_user


end
