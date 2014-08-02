class User < ActiveRecord::Base
  after_create :send_cute_email
  
  def send_cute_email
    CuteMailer.cute_email(email).deliver!
  end

  def send_yo
    curl = "curl --data "
    command = "api_token=aac6c11a-9077-f3ee-9775-1a588d93710b&username="
    command.prepend("'")
    command << (yo_username + "'")
    curl = curl + command
    url = " http://api.justyo.co/yo/"
    system (curl + url)
  end

end
