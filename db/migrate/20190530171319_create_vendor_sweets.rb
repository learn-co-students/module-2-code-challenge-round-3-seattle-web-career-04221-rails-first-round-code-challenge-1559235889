class CreateVendorSweets < ActiveRecord::Migration[5.1]
  def change
    create_table :vendor_sweets do |t|
      t.integer :sweets_id
      t.integer :vendors_id
      t.integer :price

      t.timestamps
    end
  end
end
