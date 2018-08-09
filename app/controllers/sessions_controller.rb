class SessionsController < ApplicationController

  def new

  end

  def destroy
    if session[:name]
      session.delete :name
    end
  end

  def create(*args)
    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
      redirect_to controller: 'application', action: 'hello'
    else
      redirect_to controller: 'sessions', action: 'new'
    end
  end
end
