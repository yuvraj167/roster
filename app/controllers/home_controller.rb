class HomeController < ApplicationController
	skip_before_action :authenticate_user!
	respond_to :html,:js

  def index
  	@user = User.all
  	if user_signed_in? 
  		@shift_details = current_user.shift_details
  	end
  end


end
