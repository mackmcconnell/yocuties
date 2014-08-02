class CuteMailer < ActionMailer::Base
  default :from => "mackmcconnell@gmail.com"

  def cute_email(email)
    mail to: email, reply_to: 'mackmcconnell@gmail.com', subject: "Support"
  end
end