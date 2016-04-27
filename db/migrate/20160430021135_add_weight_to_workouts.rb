class AddWeightToWorkouts < ActiveRecord::Migration[5.0]
  def change
    add_column :workouts, :weight, :integer
  end
end
