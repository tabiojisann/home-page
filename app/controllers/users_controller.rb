class UsersController < ApplicationController
 

  def show
    @user =  User.find(params[:id])
  end

  def edit
    @user = User.find(params[:id])
  end

  def update
    @user = User.find(params[:id])
    if current_user.update(user_params)
      redirect_to user_path 
    else
      render :edit
    end               
  end

  def user_params
    params.require(:user).permit(:name, :email, :sex, :age, :job, :tall, :weight, :secret)
   end


end

