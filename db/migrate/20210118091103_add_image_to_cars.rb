class AddImageToCars < ActiveRecord::Migration[6.1]
  def change
    add_column :cars, :image_url, :string
  end
end
