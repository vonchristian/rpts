class CreateMachineryDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :machinery_details do |t|
      t.string :description
      t.belongs_to :property, foreign_key: true
      t.string :brand_and_serial_number
      t.string :capacity
      t.date :date_acquired
      t.integer :condition_when_acquired
      t.decimal :economic_life_estimated
      t.decimal :economic_life_remaining
      t.date :date_of_installation
      t.date :date_of_operation
      t.text :remarks

      t.timestamps
    end
  end
end
