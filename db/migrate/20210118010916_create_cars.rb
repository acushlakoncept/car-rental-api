class CreateCars < ActiveRecord::Migration[6.1]
  def change
    create_table :cars do |t|
      t.string :make
      t.string :model
      t.integer :year
      t.string :color
      t.string :transmission
      t.boolean :ac
      t.integer :max_capacity
      t.references :user, null: false, foreign_key: true

      t.timestamps
    end
  end
end
