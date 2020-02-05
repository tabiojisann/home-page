class PagesController < ApplicationController
  # before_action :authenticate_user!

  def index
    @pages = Page.includes(:user)
    # @user = User.find(params[:id])
  end


  def show
    
  end

  


end
