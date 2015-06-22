class UsersController < ApplicationController
  
  def index
  	redirect_to root_url

  end

  def show
  	@user = User.find(params[:id])
  end

  def new
  	#@users = Array.new(2){User.new}
    @user1 = User.new
    @user2 = User.new
  end
  
  def create
    @user = User.new(user_params)
    if @user.save
          @user.send_activation_email
          UserMailer.account_activation(@user).deliver_now
      flash[:info] = "Please check your email to activate your account."
      redirect_to root_url
    else
      render 'new'    
  end
  end

  private

    def user_params
      params.require(:user).permit(:provider, :name, :email)
    end 
end
