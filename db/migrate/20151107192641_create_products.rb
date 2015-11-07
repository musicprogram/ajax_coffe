class CreateProducts < ActiveRecord::Migration
  def change
    create_table :products do |t|
      t.string :nombre
      t.integer :cantidad, default: 0
      t.float :precio, default: 0

      t.timestamps null: false
    end
  end
end
