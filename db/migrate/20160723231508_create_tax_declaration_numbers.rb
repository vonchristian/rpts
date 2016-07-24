class CreateTaxDeclarationNumbers < ActiveRecord::Migration[5.0]
  def change
    create_table :tax_declaration_numbers do |t|
      t.string :number

      t.timestamps
    end
  end
end
