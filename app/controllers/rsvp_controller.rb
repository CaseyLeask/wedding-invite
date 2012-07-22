class RsvpController < ApplicationController
  def details
    @title = 'RSVP'
    @rsvp = Rsvp.new
  end

  def create
    @rsvp = Rsvp.new(:name => params[:rsvp][:name],
                     :number => params[:rsvp][:number],
                     :email => params[:rsvp][:email],
                     :address => params[:rsvp][:address],
                     :status => params[:rsvp][:status])
    if @rsvp.save 
      Notifications.notify_rsvp.deliver
    else
    end
  end
end
