class CreateWeathers < ActiveRecord::Migration[7.0]
  def change
    create_table :weathers, :id => false do |t|
      #t.integer :id, null: false, unique: true, auto_increment: false
      t.date :date
      t.float :temperature, array: true, default: []

      t.timestamps
    end
  end
end
