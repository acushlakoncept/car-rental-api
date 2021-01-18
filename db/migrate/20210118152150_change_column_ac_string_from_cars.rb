class ChangeColumnAcStringFromCars < ActiveRecord::Migration[6.1]
  def change
    change_column :cars, :ac, :string
  end
end