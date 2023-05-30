module SessionsHelper
  def log_in(user)
    session[:user_id] = user.id
  end

  def current_user
    @current_user = User.find_by(id: session[:user_id])
  end

  def logged_in?
    !current_user.nil?
  end

  def login_administrator?
    unless logged_in? && current_user.admin
      flash[:alert] = "ログインしてください。"
    end
  end

  def require_user
    if !logged_in?
      flash[:alert] = "ログインしてください。"
      redirect_to signin_path
    end
  end

  def log_out
    session.delete(:user_id)
    @current_user = nil
  end
end
