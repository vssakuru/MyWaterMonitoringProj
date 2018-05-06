class ChangeMeasurementTimestampToBeStringInWaterdatas < ActiveRecord::Migration[5.1]
  def change
    change_column :waterdata, :measurement_timestamp_label, :string
    change_column :waterdata, :measurement_timestamp, :string
  end
end
