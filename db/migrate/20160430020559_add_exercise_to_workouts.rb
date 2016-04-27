class AddExerciseToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :exercise, :string
  end
end
