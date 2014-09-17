class ApplicationController < ActionController::Base
  # Prevent CSRF attacks by raising an exception.
  # For APIs, you may want to use :null_session instead.
  protect_from_forgery with: :exception

  def index
    @pictures = Picture.all
  end

  helper_method def current_user
    @current_user = User.find_by(name: "You")
  end

  helper_method def liked?(picture)
    picture.user_liked?(current_user)
  end

end