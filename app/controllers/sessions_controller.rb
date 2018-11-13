class SessionsController < Devise::SessionsController
  acts_as_token_authentication_handler_for Person

  layout "application"
end
