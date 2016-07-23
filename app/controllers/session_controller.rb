class SessionController < ApplicationController

  def login
    user = User.find_by(email: params[:email])
    if user.present? && user.authenticate(params.fetch(:password))
      render json: {authtoken: user.authtoken, username: user.username, email: user.email, id: user.id}
    else
      redner json: { message: "Incorrect Email or Password", status: 401}
    end
  end
end
