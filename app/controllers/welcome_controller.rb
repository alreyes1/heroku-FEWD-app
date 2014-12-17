class WelcomeController < ApplicationController
	before_action :authenticate_user!, only: [:welcome]
  def index
  end

end