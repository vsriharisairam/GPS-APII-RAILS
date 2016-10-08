class CreateGpsds < ActiveRecord::Migration
  def change
    create_table :gpsds do |t|
      t.string :location

      t.timestamps null: false
    end
  end
end
