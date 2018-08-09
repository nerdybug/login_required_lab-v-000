class SecretsController < ApplicationController

  def show
    if !current_user
      redirect_to '/login'
    end
  end

  def current_user
    session[:name] ||= nil
  end
end
