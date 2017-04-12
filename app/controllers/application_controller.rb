class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  before_action :authenticate_user!

	def before_sign_in_path
		new_user_session_path
	end

end
