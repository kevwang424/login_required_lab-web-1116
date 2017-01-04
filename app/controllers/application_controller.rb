class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception
  helper_method :logged_in, :current_user

  def current_user
    session[:name] ||= params[:name]
  end

  private

  def authenticate_user
    if !logged_in?
      redirect_to '/'
    end

  end



  def logged_in?
    !!session[:name]
  end

end
