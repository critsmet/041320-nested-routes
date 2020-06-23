class CreateAlienGroups < ActiveRecord::Migration[5.2]
  def change
    create_table :alien_groups do |t|
      t.string :name
      t.string :desription
      t.integer :planet_id

      t.timestamps
    end
  end
end
