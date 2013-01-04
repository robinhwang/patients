class LocationsController < ApplicationController
	def index
		@locations = Location.paginate(:page => params[:page], :per_page => 20).order('id DESC')

		respond_to do |format|
			format.html
			format.json{ render json: @locations}
		end
	end

	def show
		@location = Location.find(params[:id])

		respond_to do |format|
			format.html
			format.json { render json: @locations}
		end
	end

	def new
		@location = Location.new

		respond_to do |format|
			format.html
			format.json { render json: @locations}
		end
	end

	def edit
		@location = Location.find(params[:id])
	end

	def create
		@location = Location.new(params[:location])

		if @location.save
			redirect_to @location, :notice => "New location created"
		else
			render "new"
		end
	end

	def update
		@location = Location.find(params[:id])

		if @location.update_attributes(params[:location])
			redirect_to location_path(@location)
		else
			render 'edit'
		end
	end

	def destroy
		@location = Location.find(params[:id])
		@location.destroy

		redirect_to locations_path
	end
end
