class AccessController < ApplicationController
  def valid_unom
    @user = Access::User.where(unom: params[:unom]).first
    @valid = @user.nil?
  end

  def valid_email
  end

  def new_user
  end

  def cancel_new_user
  end

  def register
  end

  def user_salt
  end

  def login
  end

  def logout
  end

  def unregister
  end
end
