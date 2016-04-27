class AddRepsToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :reps, :integer
  end
end
