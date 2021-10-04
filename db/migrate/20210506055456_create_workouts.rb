class CreateWorkouts < ActiveRecord::Migration[6.1]
  def change
    create_table :workouts do |t|
      t.datetime :date
      t.string :name
      t.integer :length
      t.string :time_of_day

      t.timestamps
    end
  end
end
