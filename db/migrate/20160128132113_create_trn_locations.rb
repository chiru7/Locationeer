class CreateTrnLocations < ActiveRecord::Migration
  def change
    create_table :trn_locations do |t|
      t.decimal :latitude, :precision => 9, :scale => 6
      t.decimal :longitude, :precision => 9, :scale => 6

      t.timestamps null: false
    end
  end
end
