class CreateLandDetails < ActiveRecord::Migration[5.0]
  def change
    create_table :land_details do |t|
      t.belongs_to :property, foreign_key: true
      t.string :classification
      t.string :sub_class
      t.string :actual_user
      t.decimal :area
      t.decimal :unit_value
      t.decimal :market_value

      t.timestamps
    end
  end
end
