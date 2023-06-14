module SessionsHelper
  def sign_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def signed_in?
    !current_user.nil?
  end

  def signin_administrator?
    unless signed_in? && current_user.admin
      flash[:alert] = "ログインしてください。"
    end
  end

  def require_user
    if !signed_in?
      flash[:alert] = "ログインしてください。"
      redirect_to signin_path
    end
  end

  def sign_out
    session.delete(:user_id)
    @current_user = nil
  end
end
