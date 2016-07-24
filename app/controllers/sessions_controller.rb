class SessionsController < ApplicationController

  def sign_in
  end

  def login
    # user = User.find_by(username: params[:username])
    # if user.present?
    #   if user.authenticate(params[:password])
    #     render json: {authtoken: username.authtoken}
    #     session[:user_id] = user.id
    #     redirect_to_users_path
    #   else
    #     render json: { message: "Not found"}, status: 401
    #
    #
    #   end
    # end
    user = User.find_by(username: params[:username])
    if user.present? && user.authenticate(params.fetch(:password))
      render json: { message: "Found it"}, status: 200
    # render json: {authtoken: user.authtoken}
    else
      render json: { message: "Not found"}, status: 401
    end
  end
end
