class CreateLocations < ActiveRecord::Migration[7.0]
  def change
    create_table :locations do |t|
      # t.decimal :lat, precision: 10, scale: 10
      # t.decimal :lon, precision: 10, scale: 10
      t.float :lat
      t.float :lon
      t.string :city
      t.string :state
      t.belongs_to :weather
      t.timestamps
    end
  end
end
