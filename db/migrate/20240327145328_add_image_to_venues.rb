class AddImageToVenues < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :image, :string
  end
end
