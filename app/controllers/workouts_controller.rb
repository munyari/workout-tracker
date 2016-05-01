class WorkoutsController < ApplicationController
  def index
    @workouts = Workout.all
  end

  def new
    @workout = Workout.new
  end

  def create
    # this can be scoped to user
    Workout.create(workout_params)
    redirect_to workouts_path
  end

  private
  def workout_params
    params.require(:workout).permit(:exercise, :sets, :reps, :weight)
  end
end
