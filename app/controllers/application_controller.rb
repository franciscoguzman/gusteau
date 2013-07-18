class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :app_id
  helper_method :current_user

  def app_id
    @app ||= AppSettings.first
  end

  private

  def current_user
    @current_user ||= User.find(session[:user_id]) if session[:user_id]
  end
end
