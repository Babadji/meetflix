class AddStatusToStars < ActiveRecord::Migration[6.0]
  def change
    add_column :stars, :status, :boolean
  end
end
