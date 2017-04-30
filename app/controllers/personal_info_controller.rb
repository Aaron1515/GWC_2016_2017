class PersonalInfoController < ApplicationController

	def index
		if @user = current_user
			if @user.member
				@member = @user.member
			else 
				@member = Member.create(user_id: @user.id)
			end
		else
			redirect_to welcome_index_path
		end
	end

	def create
	end

	def edit
		if @user = current_user
			if @user.member
				@member = @user.member
			else 
				@member = Member.create(user_id: @user.id)
			end
		else
			redirect_to welcome_index_path
		end
	end

end
