require 'twilio-ruby'

def index
end

class TextersController < ApplicationController
  def index
  end

  def text
    @number = params[:number]
    @message = params[:message]

    twilio_sid =  ENV["TWILIO_SID"]
    twilio_token = ENV["TWILIO_TOKEN"]
    twilio_phone_number = ENV["TWILIO_PHONE_NUMBER"]
    
    @client = Twilio::REST::Client.new(twilio_sid, twilio_token)

    @message = @client.messages.create(
      to: @number,
      from: twilio_phone_number,
      body: @message
    )
    
      render "pages/text.html.erb"
  end
end