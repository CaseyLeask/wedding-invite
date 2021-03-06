class Notifications < ActionMailer::Base
  default :from => "caseyleask@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.notify_rsvp.subject
  #
  def notify_rsvp(rsvp)
    @rsvp = rsvp
    @greeting = "Hi"

    mail :to => "caseyleask@gmail.com",
         :subject => "RSVP from #{@rsvp.name}"
  end
end
