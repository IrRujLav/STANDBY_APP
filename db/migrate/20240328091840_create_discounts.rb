class CreateDiscounts < ActiveRecord::Migration[7.1]
  def change
    create_table :discounts do |t|
      t.string :title
      t.integer :new_price
      t.references :event, null: false, foreign_key: true

      t.timestamps
    end
  end
end
