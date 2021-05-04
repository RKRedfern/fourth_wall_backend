class CreateMeditations < ActiveRecord::Migration[6.1]
  def change
    create_table :ghosts do |t|
      t.string :name
      t.string :kind
      
      t.string :notes

      t.timestamps
    end
  end
end
