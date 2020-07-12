class CreateDogs < ActiveRecord::Migration[6.0]
  def change
    create_table :dogs do |t|
      t.string :breed
      t.string :color
      t.string :age
      t.integer :price

      t.timestamps
    end
  end
end
