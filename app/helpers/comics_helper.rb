module ComicsHelper
  def admin_user_on
    if user_signed_in?
    else
      redirect_to root_path, notice: "You do not have access to this."
    end
  end
end
