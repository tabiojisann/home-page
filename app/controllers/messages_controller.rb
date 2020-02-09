class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
    
   
    
    # @messages = @group.messages.includes(:user)
  end

  def create
    @message = Message.create(message_params)
    redirect_to messages_path
  end

  def destroy_all
    Message.destroy_all
    redirect_to messages_path
  end



  private

  def message_params
    params.require(:message).permit(:content, :image).merge(user_id: current_user.id)
  end

end
