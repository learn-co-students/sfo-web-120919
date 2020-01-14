class CreateReservations < ActiveRecord::Migration[6.0]
  def change
    create_table :reservations do |t|
      t.datetime :date
      t.integer :party_size
      t.belongs_to :restaurant, null: false, foreign_key: true
      t.belongs_to :customer, null: false, foreign_key: true

      t.timestamps
    end
  end
end
