class CreateFlights < ActiveRecord::Migration[6.0]
  def change
    create_table :flights do |t|
      t.integer :air_type
      t.datetime :time
      t.integer :num_passengers
      t.string :destination

      t.timestamps
    end
  end
end
