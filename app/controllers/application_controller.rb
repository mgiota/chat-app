class ApplicationController < ActionController::Base
	rescue_from CanCan::AccessDenied do |exception|
	  redirect_to main_app.root_url, alert: exception.message
	end

	helper_method :member_of_group, :redirect_with_flash

	def member_of_group
		!!@room.memberships.find_by(user_id: current_user.id)
	end

	def redirect_with_flash
		flash[:notice] = "You are not a member of that room"
		redirect_to root_path
	end

end
