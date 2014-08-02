class CuteMailer < ActionMailer::Base
  default :from => "mackmcconnell@gmail.com"

  def cute_email(email)
    mail to: email, reply_to: 'mackmcconnell@gmail.com', subject: subject
  end

  private

  def subject
    ["2Cute", "Too much Cuteness", "Cute overload", "Cute is the new Black", "Can Haz Cute?"].sample
  end
end