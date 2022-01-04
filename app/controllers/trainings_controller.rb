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
    @training = Training.find(params[:id])
  end
  
  def update
    training = Training.find(params[:id])
    training.update(training_params)
    redirect_to training_path(training)
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