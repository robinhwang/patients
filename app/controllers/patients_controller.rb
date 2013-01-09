class PatientsController < ApplicationController

	def location
		@location = Location.find(params[:id])
		@patients = Patient.where(:location_id => @location.id)
	end


	def index
		@patients = Patient.paginate(:page => params[:page], :per_page => 20).order('id DESC')

		respond_to do |format|
      format.html
      format.json { render json: @patients }
    end
	end

	def show
		@patient = Patient.find(params[:id])
		@patient.update_attribute(:viewed_count, @patient.viewed_count+1)

		respond_to do |format|
      format.html
      format.json { render json: @patients }
    end
	end

	def edit
		@patient = Patient.find(params[:id])
	end

	def new
		@patient = Patient.new

		respond_to do |format|
      format.html
      format.json { render json: @patients }
    end
	end

	def create
		@patient = Patient.new(params[:patient])
		@patient.viewed_count = 0

		if @patient.save
			redirect_to @patient, :notice => "New patient created"
		else
			redirect_to :root, :notice => "Fail to create one"
		end
	end

	def update
		@patient = Patient.find(params[:id])

		if @patient.update_attributes(params[:patient])
			redirect_to patient_path(@patient)
		else
			render 'edit'
		end
	end

	def destroy
		@patient = Patient.find(params[:id])
		@patient.destroy

		redirect_to :root
	end
end
