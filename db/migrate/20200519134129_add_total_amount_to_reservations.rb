class AddTotalAmountToReservations < ActiveRecord::Migration[6.0]
  def change
    add_column :reservations, :total_amoount, :integer
  end
end
