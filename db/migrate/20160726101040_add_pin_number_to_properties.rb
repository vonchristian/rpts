class AddPinNumberToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :pin_number, :string
  end
end
