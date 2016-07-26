class RemoveNumberFromProperties < ActiveRecord::Migration[5.0]
  def change
    remove_column :properties, :number, :decimal
  end
end
