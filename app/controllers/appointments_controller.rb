class AppointmentsController < ApplicationController
  before_action :set_appointment
  before_action :set_animals, only: [:show, :destroy]

  def index
    @appointments = Appointment.all
  end

  def show; end

  def new
    @appointments = Appointment.new
  end

  def create
    @appointments = Appointment.new(appointment_params)
    @appointments.animal = @animals
    if @appointment.save
      redirect_to appointment_path(@appointments)
    else
      render :new
    end
  end

  def destroy
    @appointment.destroy
    redirect_to appointment_path(@animals)
  end

  private

  def set_appointment
    @appointments = Appointment.find(params[:animal_id])
  end

  def set_animals
    @animals = Animal.find(params[:id])
  end

  def appointment_params
    params.require(:appointments).permit(:name, :date, :address, :phone)
  end
end
