class SessionsController < ApplicationController

  def new

  end

  def destroy

  end

  def create(*args)

    if params[:name] && params[:name] != ""
      session[:name] = params[:name]
    else
      redirect_to '/new'
    end
    # if session[:name] == nil || session[:name] == ""
    #   binding.pry
    #   redirect_to '/new'
    # elsif params[:name]
    #   session[:name] = params[:name]
    # end
  end
end
