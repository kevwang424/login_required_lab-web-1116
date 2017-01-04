class SecretsController < ApplicationController

  before_action :authenticate_user

  def show
    @name = session[:name]
  end


end
