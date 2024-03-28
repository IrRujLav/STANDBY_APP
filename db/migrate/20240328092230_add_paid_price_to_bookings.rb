class AddPaidPriceToBookings < ActiveRecord::Migration[7.1]
  def change
    add_column :bookings, :paid_price, :integer
  end
end
