class ApplicationController < ActionController::Base

		before_action :sanitize_devise_parameters, if: :devise_controller?

		def sanitize_devise_parameters
			devise_parameter_sanitizer.permit(:sign_up, keys: [:first_name, :last_name])
													
		end


end
