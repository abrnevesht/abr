# encoding: utf-8
class AccountActivationsController < ApplicationController
	def edit
    user = User.find_by(email: params[:email])
    if user && user.authenticated?(:activation) && !user.activated? 
      user.update_attribute(:activated,    true)
      user.update_attribute(:activated_at, Time.zone.now)
      log_in user
      flash[:success] = "Account activated!"
      redirect_to manage_path
    else
      flash[:danger] = "Invalid activation link"
      redirect_to root_url
    end
  end

end

