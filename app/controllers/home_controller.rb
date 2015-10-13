class HomeController < ApplicationController
	skip_before_action :authenticate_user!
	respond_to :html,:js

  def index
  	@user = User.all
  end


end
