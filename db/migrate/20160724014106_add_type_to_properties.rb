class AddTypeToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :type, :string
    add_index :properties, :type
  end
end
