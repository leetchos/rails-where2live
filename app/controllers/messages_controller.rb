class MessagesController < ApplicationController
  def create
    @neighborhood = Neighborhood.find(params[:neighborhood_id])
    @message = Message.new(message_params)
    @message.neighborhood = @neighborhood
    @message.user = current_user
    if @message.save

      # ChatroomChannel.broadcast_to(
      #   @chatroom,
      #   render_to_string(partial: "message", locals: { message: @message })
      # )
      redirect_to neighborhood_path(@neighborhood, anchor: "message-#{@message.id}")
    else
      render "neighborhoods/show"
    end
  end
end


