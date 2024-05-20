class MessagesController < ApplicationController
  def show
    @chatroom = Chatroom.find(params[:id])
    @message = Message.new
  end

  def create
    @chatroom = Chatroom.find(params[:chatroom_id])
    @message = Message.new(message_params)
    @message.chatroom = @chatroom
    @message.user = current_user
    # if @message.save
    #   redirect_to chatroom_path(@chatroom.event)
    # else
    #   render "chatrooms/show", status: :unprocessable_entity
    # end
    # if @message.save
    #   ChatroomChannel.broadcast_to(
    #     @chatroom,
    #     render_to_string(partial: "message", locals: { message: @message })
    #   )
    #   head :ok
    # else
    #   render "chatrooms/show", status: :unprocessable_entity
    # end

    @message.save
    ChatroomChannel.broadcast_to(
      @chatroom,
      message: render_to_string(partial: "message", locals: { message: @message }),
      sender_id: @message.user.id
    )
    head :ok
  end

  private

  def message_params
    params.require(:message).permit(:content)
  end
end
