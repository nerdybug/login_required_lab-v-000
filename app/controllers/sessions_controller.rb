class SessionsController < ApplicationController

  def new

  end

  def destroy

  end

  def create
    if session[:name] == nil
      redirect_to '/new'
    end
  end
end
