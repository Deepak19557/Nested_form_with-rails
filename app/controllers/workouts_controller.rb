class WorkoutsController < ApplicationController
  def search

    @search = Workout.where('name LIKE :deepak OR length LIKE :deepak',deepak: "#{params[:search]}" )
    # if @search
    #   flash[:notice] = "#{@search} not found"
    #   redirect_to '/workouts'
    #end
  end

  def index
  	@workouts = Workout.all 
  	@exercises = Exercise.all
  end

  def new
    @workout = Workout.new
    @workout.exercises.build
  end 

  def create
  	@workout = Workout.create(workout_params)
    redirect_to root_path 
  end

  private

  def workout_params
    params.require(:workout).permit(:date, :name,  :length, :time_of_day, exercises_attributes: [ :id, :name, :sets, :reps, :weight,:_destroy])
  end
end
