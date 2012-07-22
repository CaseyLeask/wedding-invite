class RsvpController < ApplicationController
  def details
    @title = 'RSVP'
    @rsvp = Rsvp.new
  end

  def send
    @rsvp = Rsvp.new(params[:rsvp])
    if @rsvp.save 
    else
    end
  end
end
