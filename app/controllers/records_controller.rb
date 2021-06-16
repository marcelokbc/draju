class RecordsController < ApplicationController
	def index
    @records = Record.all
  end

  def show; end

  def new
    @record = Record.new
  end

  def create
    @record = Record.new(record_params)
    if @record.save
      redirect_to record_path(@record)
    else
      render :new
    end
  end

  def edit; end

  def update
    if @record.update(record_params)
      redirect_to record_path(@record)
    else
      render :new
    end
  end

  def destroy
  @record.destroy
  redirect_to record_path
  end

  private

  def record_list
    @record = Record.find(params[:id])
  end

  def record_params
    params.require(:record).permit(:animal_id, :user_id, :prescription, :date, :diagnosis_title)
  end
end
