require 'openssl'

class AccessController < ApplicationController
  def valid_unom
    @user = Access::User.where(unom: params[:unom]).first
    @valid = @user.nil?
  end

  def valid_email
    @user = Access::User.where(email: params[:email]).first
    @valid = @user.nil?
  end

  def new_user
    uuser = Access::User.where(unom: params[:unom_v]).first
    euser = Access::User.where(email: params[:email_v]).first
    @valid =
    if not uuser.nil?
      'user'
    elsif not euser.nil?
      'email'
    else
      true
    end
    @new_user = 
    if @valid
      Access::UserQueue.create unom: params[:unom_v], email: params[:email_v], salt: SecureRandom.hex(16), iterations: 8000 + SecureRandom.random_number( 4001 )
    else
      nil
    end
  end

  def cancel_new_user
  end

  def register
    @new_user = Access::UserQueue.find params[:id_v]
    uuser = Access::User.where(unom: @new_user.unom).first
    euser = Access::User.where(email: @new_user.email).first
    @valid =
    if not uuser.nil?
      'user'
    elsif not euser.nil?
      'email'
    else
      true
    end
    if @valid
      salt = SecureRandom.hex(32)
      hash = OpenSSL::HMAC.hexdigest( OpenSSL::Digest.new('sha512'), Access::User.hmac_key, params[:passhash] + salt )
      @user = Access::User.new do |u|
        u.unom = @new_user.unom
        u.email = @new_user.email
        u.client_salt = @new_user.salt
        u.iterations = @new_user.iterations
        u.server_salt = salt
        u.passhash = hash
        u.state = test_user_00[0]
        u.status = test_user_00[1]
        u.details = {}
      end
      if @user.save
        Access::User::Color.create user: @user, ctyp: 'primary', color: 'rgba(0,0,0,0)'
        Access::User::Color.create user: @user, ctyp: 'secondary', color: 'rgba(0,0,0,0)'
        Access::User::Color.create user: @user, ctyp: 'tertiary', color: 'rgba(0,0,0,0)'
        session[:current_user_id] = @user.id
        redirect_to edit_user_path
      end
    end
  end

  def user_salt
  end

  def login
  end

  def logout
  end

  def unregister
  end
  
  protected
  
  def test_user_00
    [0,'test_user_00 - valid']
  end
  
  def self.ip_to_i(s)
    is = s.split('.')
    is[0].to_i * 256*256*256 + is[1].to_i * 256*256 + is[2].to_i * 256 + is[3].to_i
  end
end
