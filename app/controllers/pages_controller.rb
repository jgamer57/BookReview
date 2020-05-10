class PagesController < ApplicationController
	
	def twitter
		render template: "pages/#{params[:page]}"
	end

end
