class SessionsController < ApplicationController

  def login
    user = User.find_by(username: params[:username])
    if user.present? && user.authenticate(params.fetch(:password))
      render json: {authtoken: user.authtoken}
    else
      render status: 401
    end
  end
end
