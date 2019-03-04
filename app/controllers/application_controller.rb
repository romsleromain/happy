class ApplicationController < ActionController::Base
  before_action :authenticate_talent!
  before_action :configure_permitted_parameters, if: :devise_controller?
  # config.action_view.embed_authenticity_token_in_remote_forms = true

  def configure_permitted_parameters
    # For additional fields in app/views/devise/registrations/new.html.erb
    devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])

    # For additional in app/views/devise/registrations/edit.html.erb
    devise_parameter_sanitizer.permit(:account_update, keys: [:username])
  end

  def after_sign_up_path_for(resource)
    edit_profile_path(resource)
  end

  def after_sign_in_path_for(resource)
    if resource.values.any?
      root_path
    else
      edit_profile_path(resource)
    end
  end
end
