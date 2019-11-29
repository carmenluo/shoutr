class SessionsController < ApplicationController
  private

  def authenticate
    super(session_params)
  end

  def session_params
    { session: session_params_with_email}
  end

  def session_params_with_email
    params.require(:session).permit(:password).merge(email: user.email)
  end
end
