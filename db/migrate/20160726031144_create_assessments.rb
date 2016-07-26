class CreateAssessments < ActiveRecord::Migration[5.0]
  def change
    create_table :assessments do |t|
      t.belongs_to :property, foreign_key: true
      t.boolean :taxable
      t.decimal :adjusted_market_value
      t.decimal :assessment_level
      t.decimal :assessed_value
      t.decimal :previous_assessed_value
      t.decimal :previous_adjusted_market_value
      t.date :effectivity

      t.timestamps
    end
  end
end
