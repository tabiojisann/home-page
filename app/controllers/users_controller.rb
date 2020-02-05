class UsersController < ApplicationController
 

  def show
    @user =  User.find(params[:id])
    @pages = @user.pages
  end

  def edit
    
  end

  def update
    
  end

  def destroy
    
  end

end


