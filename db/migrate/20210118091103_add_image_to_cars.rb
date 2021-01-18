class AddImageToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :image_data, :text
  end
end
