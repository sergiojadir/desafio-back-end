class ArquivoCnabNotificationsChannel < ApplicationCable::Channel
  def subscribed
  	p "*"*80
  	p "*"*80
    stream_from "arquivo_cnab_notifications_channel"
  end

  def unsubscribed
    # Any cleanup needed when channel is unsubscribed
  end
end
