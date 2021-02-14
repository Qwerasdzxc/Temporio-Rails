class SessionsController < ApplicationController
  def new
  end
  
  def create
    user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      log_in user
      remember user if params[:session][:remember_me]
      redirect_to user
    else
      flash.now[:danger] = 'Invalid email/password combination' #Posto redirektujemo, koristimo flash.now, kako se ne bi zadzavao flash dva requesta
      render 'new'
    end
  end
  
  def destroy
      log_out
      redirect_to root_url
  end
  
end
