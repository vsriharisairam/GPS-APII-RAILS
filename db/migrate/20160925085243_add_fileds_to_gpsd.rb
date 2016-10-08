class AddFiledsToGpsd < ActiveRecord::Migration
  def change
  add_column :gpsds, :device_id, :bigint
  add_column :gpsds, :estatus, :boolean
  add_column :gpsds, :alaram, :boolean
  end
end