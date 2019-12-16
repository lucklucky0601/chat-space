class ApplicationController < ActionController::Base
  config.generators do |g|
    g.stylesheets false
    g.javascripts false
    g.helper false
    g.test_framework false
  protect_from_forgery with: :exception
end
end