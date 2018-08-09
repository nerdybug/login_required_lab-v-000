class SessionsController < ApplicationController

  def new

  end

  def destroy

  end

  def create
    if session[:name] == nil || session[:name]
      redirect_to '/new'
    else
      session[:name] = params[:name]
    end
  end
end
