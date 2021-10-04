class RegistrationsController < Devise::RegistrationsController
	
	def new
		@member = Member.new
	end

	def create
	   @member = Member.new(member_params)
	    if @member.save
		  sign_in @member
		  redirect_to root_path
		end
	end


	private
	def member_params
		params.require(:member).permit(:email,:password,:password_confirmation)
	end
end  