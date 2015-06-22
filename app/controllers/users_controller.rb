class UsersController < ApplicationController
  def index
    render :layout => "manage_layout"
  end

  def show
  	@user = User.find(params[:id])
    render :layout => "manage_layout"
  end

  def new
  	#@users = Array.new(2){User.new}
    @user = User.new
    @user2 = User.new
    #render :layout => "manage_layout"
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
