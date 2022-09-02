class AddEndedAtToRents < ActiveRecord::Migration[7.0]
  def change
    add_column :rents, :ended_at, :datetime, default: nil
  end
end
