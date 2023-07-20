require "application_responder"

class ApplicationController < ActionController::Base
  self.responder = ApplicationResponder
  respond_to :html
  def after_sign_in_path_for(resource)
    # Customize the redirect path after sign-in here.
    # In this case, we redirect to the "new post" page.
    new_post_path
  end
end
