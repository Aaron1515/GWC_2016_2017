class WelcomeController < ApplicationController
  def index
  	if current_user
  		@user = current_user
  	end
  end

  def community
  end
  
end
