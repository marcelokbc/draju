class AnimalsController < ApplicationController
	before_action :appointments_list, only: [:edit, :update, :destroy]

  def index
    @animals = Animal.all
  end

  def show; end

  def new
    @animal = Animal.new
  end

  def create
    @animal = Animal.new(animals_params)
    if @animal.save
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
    params.require(:animal).permit(:name, :photo, :age, :specie, :user_id)
  end
end
