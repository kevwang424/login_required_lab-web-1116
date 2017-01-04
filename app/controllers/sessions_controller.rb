class SessionsController < ApplicationController

  def new
    redirect_to '/secrets/show' if logged_in?
  end

  def create
    if params[:name].nil? || params[:name].empty?
      redirect_to '/'
    else
      current_user
      redirect_to '/secrets/show'
    end
  end

  def destroy
    session[:name] = nil
    redirect_to '/'
  end

end
