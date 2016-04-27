class AddSetsToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :sets, :integer
  end
end
