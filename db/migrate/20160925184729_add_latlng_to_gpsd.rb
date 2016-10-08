class AddLatlngToGpsd < ActiveRecord::Migration
  def change
      add_column :gpsds, :lng, :float
      add_column :gpsds, :lat, :float
  end
end
