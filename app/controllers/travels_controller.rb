class TravelsController < ApplicationController
	def index
		@travels = Travel.all
	end

	def new
		@travel = Travel.new
	end

	def create
		Travel.create(travel_params)
		redirect_to root_path
	end

	private

	def travel_params
		params.require(:travel).permit(:locationName, :description, :address, :username, :fname, :lname, :bio)
	end

end
