class CreateMeditations < ActiveRecord::Migration[6.1]
  def change
    create_table :meditations do |t|
      t.string :name
      t.string :kind
      t.integer :duration 
      t.string :notes

      t.timestamps
    end
  end
end
