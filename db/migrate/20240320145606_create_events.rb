class CreateEvents < ActiveRecord::Migration[7.1]
  def change
    create_table :events do |t|
      t.string :name
      t.string :description
      t.string :category
      t.integer :price
      t.date :date
      t.references :venue, null: false, foreign_key: true

      t.timestamps
    end
  end
end
