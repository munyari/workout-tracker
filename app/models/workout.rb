class Workout < ActiveRecord::Base
  validates_presence_of :exercise, :reps, :sets
end
