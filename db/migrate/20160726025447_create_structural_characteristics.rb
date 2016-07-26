class CreateStructuralCharacteristics < ActiveRecord::Migration[5.0]
  def change
    create_table :structural_characteristics do |t|
      t.belongs_to :property, foreign_key: true
      t.string :foundation
      t.string :columns
      t.string :beams
      t.string :truss_frame
      t.string :roof
      t.string :exterior_wall_front
      t.string :exterior_walls_rear
      t.string :exterior_wall_right
      t.string :exterior_walls_left
      t.string :exterior_walls_inside
      t.string :flooring
      t.string :floor_finish
      t.string :structural_type
      t.string :classification
      t.string :building_permit
      t.string :afe
      t.integer :height_or_storey
      t.integer :number_of_rooms
      t.string :stairs
      t.string :windows
      t.string :partition
      t.string :partition_finish
      t.string :door
      t.string :electrical
      t.string :plumbing_or_sewer
      t.string :paintings
      t.string :ceiling
      t.string :ceiling_finish
      t.date :date_cosntructed
      t.date :date_completed
      t.date :date_occupied
      t.string :area_of_ground_floor
      t.string :total_building_area

      t.timestamps
    end
  end
end
