class CreateProperties < ActiveRecord::Migration[5.0]
  def change
    create_table :properties do |t|
      t.string :number
      t.decimal :land_area

      t.timestamps
    end
  end
end
