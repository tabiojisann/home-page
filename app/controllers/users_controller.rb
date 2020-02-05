class UsersController < ApplicationController
  # def index
   
    
  #   # @user =  User.find(params[:id]) ←動かない
  #   @pages = @user.pages 
  # end

  def show
    @user =  User.find(params[:id])
    @pages = @user.pages
  end
end
