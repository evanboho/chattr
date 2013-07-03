class HomeController < ApplicationController
  def index
  end

  def new
  end

  def send_message
    message = Message.create(sender: params[:sender], text: params[:text], color: params[:color])
    Pusher['channel1'].trigger('msg', {
        name: params[:sender],
        message: params[:text],
        color: params[:color]
      }
    )
    render :nothing => true
  end

end
