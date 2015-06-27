# encoding: utf-8
class SessionsController < ApplicationController
  #def create
  #  user = User.from_omniauth(env["omniauth.auth"])
  #  session[:user_id] = user.id
  #  redirect_to root_path
  #end

  #def destroy
  #  session[:user_id] = nil
 #   redirect_to root_path
  #end
  def new 	
     render layout: "welcome_layout"
  end

  def create
  	user = User.find_by(email: params[:session][:email].downcase)
    if user && user.authenticate(params[:session][:password])
      if 1#user.activated? #1
        log_in user
        redirect_to manage_path
      else
        message  = "Account not activated. "
        message += "Check your email for the activation link."
        flash[:warning] = message
        redirect_to root_url
      end
    else
      # Create an error message.
      flash.now[:danger] = 'Invalid email/password combination'
      render 'new'
    end
    #user = User.from_omniauth(env["omniauth.auth"])
    #session[:user_id] = user.id
    #redirect_to root_path
  end

  def destroy
    #session[:user_id] = nil
    session.delete(:user_id)
    @current_user = nil
    redirect_to root_url
  end
end
