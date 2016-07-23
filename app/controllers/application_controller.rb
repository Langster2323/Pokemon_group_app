class ApplicationController < ActionController::API
  def authenticate_token?(token)
    User.find_by(authtoken: token)
  end
end
