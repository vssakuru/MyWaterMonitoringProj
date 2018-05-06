class CreateWaterdata < ActiveRecord::Migration[5.1]
  def change
    create_table :waterdata do |t|
      t.string :beach_name
      t.datetime :measurement_timestamp
      t.float :water_temperature
      t.float :turbidity
      t.float :transducer_depth
      t.float :wave_height
      t.integer :wave_period
      t.float :battery_life
      t.datetime :measurement_timestamp_label
      t.string :measurement_id
      t.timestamps
    end
  end
end
