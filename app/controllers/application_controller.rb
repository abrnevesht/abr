# encoding: utf-8
class ApplicationController < ActionController::Base

  #protect_from_forgery with: :exception
  include SessionsHelper
  helper_method :current_user

  def current_user
    #@current_user ||= User.find(session[:user_id]) if session[:user_id]
    @current_user ||= User.find_by(id: session[:user_id])
  end
end
