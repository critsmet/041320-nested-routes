class CreatePlanets < ActiveRecord::Migration[5.2]
  def change
    create_table :planets do |t|
      t.string :name
      t.string :galaxy
      t.integer :temperature
      t.integer :moons

      t.timestamps
    end
  end
end
