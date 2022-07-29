class CreateBooks < ActiveRecord::Migration[7.0]
  def change
    create_table :books do |t|
      t.string :author, null: false
      t.string :title, null: false
      t.text :description
      t.boolean :status, null: false, default: 0

      t.timestamps
    end
  end
end
