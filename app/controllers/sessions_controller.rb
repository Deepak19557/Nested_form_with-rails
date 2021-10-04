class SessionsController <  Devise::SessionsController

	 def new 
	 	@member = Member.new 
	 end 

    def create
        @member = Member.find_by_email(params[:member][:email])
        if @member != nil 
            self.resource = warden.authenticate!(auth_options)
            sign_in @member 
            redirect_to root_path 
        end
     end
end















