class RenameTipeColumnToCategoryInVenues < ActiveRecord::Migration[7.1]
  def change
    rename_column(:venues, :type, :category)
  end
end
