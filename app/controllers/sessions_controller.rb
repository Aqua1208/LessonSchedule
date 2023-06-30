class SessionsController < ApplicationController
  def new
  end

  def create
    user = User.find_by(name: params[:session][:name])
    if user && user.authenticate(params[:session][:password])
      sign_in(user)
      redirect_to lessons_path
    else
      render "new", status: :unprocessable_entity
    end
  end

  def destroy
    sign_out
    redirect_to signin_path, status: :see_other
  end
end
