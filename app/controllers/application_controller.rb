class ApplicationController < ActionController::Base
	  before_action :authenticate_member!
	  # def after_sign_in_path_for(resource)
  		 #render app_dashboard_index_path
	  #end
end
