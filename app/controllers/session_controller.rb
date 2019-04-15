class SessionController < ApplicationController
  def new
  end

  def create
    user = Signup.find_by(tel: params[:tel])
    if user && user.authenticate(params[:password])
      log_in user
      render '/home/success'
    else
      flash.now[:danger] = 'Invalid email/password combination'
      render '/home/error'
    end
  end

  def destroy
    log_out
    redirect_to root_url
  end
end
