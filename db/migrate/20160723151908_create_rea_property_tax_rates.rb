class CreateReaPropertyTaxRates < ActiveRecord::Migration[5.0]
  def change
    create_table :rea_property_tax_rates do |t|
      t.decimal :rate

      t.timestamps
    end
  end
end
