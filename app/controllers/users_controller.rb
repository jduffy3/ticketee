class UsersController < ApplicationController
  before_action :set_user, only:[:show, :edit, :update]
  def new
  	@user = User.new
  end

  def create
  	@user = User.new(user_params)

  	if @user.save
  		flash[:notice] = "You have signed up successfully."
  		redirect_to projects_path
  	else
  		render :new
  	end
  end

  def show
  end

  def edit
  end

  def update
    if @user.update(user_params)
      flash[:notice] = "Profile has been updated."
      redirect_to @user
    else
      flash[:alert] = "Profile has not been updated."
      render "edit"
    end
  end

  private

  	def user_params
  		params.require(:user).permit(:name,:password,:password_confirmation)
  	end

    def set_user
      #not handling exception- thinking: user for edit has to be logged in, therefore found
      @user = User.find(params[:id])
    end
end
