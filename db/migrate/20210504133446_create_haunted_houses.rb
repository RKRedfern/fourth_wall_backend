class CreateHauntedHouses < ActiveRecord::Migration[6.1]
  def change
    create_table :haunted_houses do |t|
      t.string :location 
      t.string :kind
      t.string :notes
      t.timestamps
    end
  end
end
