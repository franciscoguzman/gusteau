class ApplicationController < ActionController::Base
  protect_from_forgery
  before_filter :app_id

  def app_id
    @app ||= AppSettings.first
  end

end
