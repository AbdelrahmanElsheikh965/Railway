class ApplicationController < ActionController::Base
  # With this option, Rails accepts requests with missing or invalid CSRF tokens,
  # but it replaces them with a null session. This prevents the request from being rejected outright and allows the request to proceed with an empty session. 
  # This option is useful for APIs where CSRF tokens may not be present or easily included.
  # to => bypass csrf token in postman
  protect_from_forgery with: :null_session
end
