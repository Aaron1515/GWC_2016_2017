class WelcomeController < ApplicationController
  def index
  	if current_user
  		@user = current_user
  	else
  	end
  end
end
