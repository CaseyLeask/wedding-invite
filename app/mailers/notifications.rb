class Notifications < ActionMailer::Base
  default :from => "caseyleask@gmail.com"

  # Subject can be set in your I18n file at config/locales/en.yml
  # with the following lookup:
  #
  #   en.notifications.notify_rsvp.subject
  #
  def notify_rsvp
    @greeting = "Hi"

    mail :to => "caseyleask@gmail.com",
         :subject => 'Test email from yourself'
  end
end
