class CreateAddresses < ActiveRecord::Migration[5.0]
  def change
    create_table :addresses do |t|
      t.string :house_number
      t.string :street
      t.string :barangay
      t.string :municipality
      t.string :province
      t.integer :addressable_id
      t.string :addressable_type

      t.timestamps
    end
    add_index :addresses, :addressable_id
    add_index :addresses, :addressable_type
  end
end
