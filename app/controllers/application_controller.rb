class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception

  def after_sign_in_path_for(resource)
    resource.is_a?(Company) ? dashboard_companies_path : users_path
  end
end
