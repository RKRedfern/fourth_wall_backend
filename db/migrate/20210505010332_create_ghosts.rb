class CreateGhosts < ActiveRecord::Migration[6.1]
  def change
    create_table :ghosts do |t|
      t.string :name
      t.string :kind
      t.string :notes
      t.references :user, null: false, foreign_key: true
      t.timestamps
    end
  end
end
