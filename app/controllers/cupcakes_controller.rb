class CupcakesController < ApplicationController
	def index 
		@cupcakes = Cupcake.all
	end
		
	def show 
		@cupcake = Cupcake.find(params[:id])
	end

end
