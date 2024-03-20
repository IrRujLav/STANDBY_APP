class AddColumnsToVenues < ActiveRecord::Migration[7.1]
  def change
    add_column :venues, :location, :string
    add_column :venues, :name, :string
    add_column :venues, :type, :string
    add_reference :venues, :user, null: false, foreign_key: true
  end
end
