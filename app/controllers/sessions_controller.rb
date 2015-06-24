class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.new(name: params[:name])
    session[:username] = user.name

    redirect_to chat_rooms_path
  end
end