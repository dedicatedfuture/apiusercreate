class SearchController < ApplicationController
	include Itunes

	
	def index
		

	respond_to do |format|
      format.json do
        name = params[:name]
        email = params[:email]
        @user = User.create(:name => name, :email => email)
        render json: @result
      end
    end
		
		# render json: {itunes: @response}
	end
end
