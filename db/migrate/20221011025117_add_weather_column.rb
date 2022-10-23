class AddWeatherColumn < ActiveRecord::Migration[7.0]
  def change
    add_column :weathers, :id, :int, null: false, unique: true, auto_increment: false,  primary_key: true
  end
end
