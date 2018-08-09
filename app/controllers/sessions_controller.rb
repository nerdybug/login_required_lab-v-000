class SessionsController < ApplicationController

  def new

  end

  def destroy

  end

  def create
    if session[:name] == nil || session[:name] == ""
      redirect_to '/new'
    elsif params[:name]
      session[:name] = params[:name]
    end
  end
end
