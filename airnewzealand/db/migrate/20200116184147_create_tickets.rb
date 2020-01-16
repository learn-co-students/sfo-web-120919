class CreateTickets < ActiveRecord::Migration[6.0]
  def change
    create_table :tickets do |t|
      t.datetime :date
      t.integer :seat_num
      t.integer :passenger_id
      t.references :flight, null: false, foreign_key: true

      t.timestamps
    end
  end
end
