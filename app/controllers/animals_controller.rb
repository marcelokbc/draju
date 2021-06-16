class AnimalsController < ApplicationController
	before_action :appointments_list, only: [:edit, :show, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show; end

  def new
    @animals = Animal.new
  end

  def create
    @animals = Animal.new(animals_params)
    if @animals.save
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @animals.update(animals_params)
      redirect_to animal_path(@animal)
    else
      render :new
    end
  end

  def destroy
  @appointments.destroy
  redirect_to appointment_path
  end

  private

  def appointments_list
    @appointments = Appointment.find(params[:id])
  end

  def animals_params
    params.require(:animals).permit(:name, :age, :specie)
  end
end
