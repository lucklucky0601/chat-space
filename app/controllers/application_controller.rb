class ApplicationController < ActionController::Base
  config.generators do |g|
    g.stylesheets false
    g.javascripts false
    g.helper false
    g.test_framework false
  protect_from_forgery with: :exception
  before_action :authenticate_user!
  before_action :configure_permitted_parameters, if: :devise_controller?

protected

def configure_permitted_parameters
  devise_parameter_sanitizer.permit(:sign_up, keys: [:name])
end
end
end