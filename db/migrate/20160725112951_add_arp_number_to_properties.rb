class AddArpNumberToProperties < ActiveRecord::Migration[5.0]
  def change
    add_column :properties, :arp_number, :string
  end
end
