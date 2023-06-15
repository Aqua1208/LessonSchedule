class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to lessons_path
    else
      flash.now[:error] = "ログインに失敗しました"
      render "new", status: :unprocessable_entity
    end
  end

  def change
    if current_user.admin 
      sign_out
      user = User.find(session[:change_signin])      
      sign_in(user)
      session.delete(:change_signin)
      redirect_to user_path(user)
    end
  end

  def destroy
    sign_out
    redirect_to signin_path, status: :see_other
  end
end
