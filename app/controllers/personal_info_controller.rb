class PersonalInfoController < ApplicationController

	def index
		if @user = current_user
			if @user.member
				@member = @user.member
			else
				@member = Member.new
			end
		else
			redirect_to welcome_index_path
		end
	end

	def create
	end

end
