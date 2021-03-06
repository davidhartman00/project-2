class CreatePets < ActiveRecord::Migration
  def change
    create_table :pets do |t|
      t.string :name
      t.references :user, index: true, foreign_key: true
      t.string :species
      t.string :breed
      t.integer :age

      t.timestamps null: false
    end
  end
end
