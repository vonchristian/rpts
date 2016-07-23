class CreateDiscounts < ActiveRecord::Migration[5.0]
  def change
    create_table :discounts do |t|
      t.decimal :percent

      t.timestamps
    end
  end
end
