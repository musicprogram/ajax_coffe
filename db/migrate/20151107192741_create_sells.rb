class CreateSells < ActiveRecord::Migration
  def change
    create_table :sells do |t|
      t.references :product, index: true, foreign_key: true
      t.integer :cantidad, default: 0
      t.float :precio_total, default: 0

      t.timestamps null: false
    end
  end
end
