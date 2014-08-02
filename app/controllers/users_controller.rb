require 'httparty'
require 'uri'

class UsersController < ApplicationController

  def index
  end

  def create
    email = params[:user][:email]
    username = params[:user][:yo_username].upcase
    user = User.find_by_email(email)
    unless user
      user = User.create(email: email, yo_username: username)
    end
      user.send_yo
    flash[:notice] = "OK, we got some mad Cuties comin' your way!"
    redirect_to :root
  end

  def receive_yo
    username = params[:username]
    user = User.find_by_yo_username(username)
    if user
      user.send_yo
      user.send_cute_email
    end
  end

end
