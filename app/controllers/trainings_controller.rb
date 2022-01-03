class TrainingsController < ApplicationController
  
  def index
    @training = Training.new
    @trainings = Training.all
  end
  
  def show
    @training = Training.find(params[:id])
  end
  
  
  def create
    training = Training.new(training_params)
    training.save
    redirect_to trainings_path
  end
  
  def edit
  end
  
  def destroy
    training = Training.find(params[:id])
    training.destroy
    redirect_to trainings_path  
  end
  
  private
  def training_params
    params.require(:training).permit(:title, :body)
  end
  
end