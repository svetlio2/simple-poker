class SessionsController < ApplicationController
  skip_before_action :require_username, only: [:new, :create]
  
  def new
  end

  def create
    user = User.new(name: params[:name])
    session[:username] = user.name

    redirect_to chat_rooms_path
  end
end