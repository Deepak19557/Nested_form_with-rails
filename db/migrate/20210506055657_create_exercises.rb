class CreateExercises < ActiveRecord::Migration[6.1]
  def change
    create_table :exercises do |t|
      t.string :name
      t.integer :sets
      t.integer :reps
      t.integer :weight
      t.integer :workout_id

      t.timestamps
    end
  end
end
