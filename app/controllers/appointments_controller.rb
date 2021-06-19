class AppointmentsController < ApplicationController
  # before_action :set_appointment
  # before_action :set_animals

  def index
    @appointments = Appointment.all
  end

  def show; end

  def new
    @appointment = Appointment.new
  end

  def create
    @appointment = Appointment.new(appointment_params)
    @appointment.animal = @animal
    if @appointment.save
      redirect_to appointments_path
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
    params.require(:appointment).permit(:name, :start_at, :address, :phone, :animal_id)
  end
end
