class MessagesController < ApplicationController
  def index
    @message = Message.new
    @messages = Message.all
    
   
    
    # @messages = @group.messages.includes(:user)
  end

  def create
    @message = Message.create(message_params)

    if @message.save
      respond_to do |format|
        format.json
      end
    else
      format.html {redirect_to messages_path}
    end

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
