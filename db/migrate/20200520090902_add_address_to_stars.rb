class AddAddressToStars < ActiveRecord::Migration[6.0]
  def change
    add_column :stars, :address, :string
  end
end
