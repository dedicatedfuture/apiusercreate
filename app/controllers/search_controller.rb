class SearchController < ApplicationController
	include Itunes

	
	def index
		

        name = params[:name]
        email = params[:email]
        @user = User.create(:name => name, :email => email)
        
        render json: @result
    # end
		
		# render json: {itunes: @response}
	end
end
