class CreateRents < ActiveRecord::Migration[7.0]
  def change
    create_table :rents do |t|
      t.references :user, null: false, foreign_key: true
      t.references :book, null: false, foreign_key: true
      t.boolean :status, null: false, default: 0

      t.timestamps
    end
  end
end
