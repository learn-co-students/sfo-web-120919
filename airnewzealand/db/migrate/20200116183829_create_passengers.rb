class CreatePassengers < ActiveRecord::Migration[6.0]
  def change
    create_table :passengers do |t|
      t.string :name
      t.boolean :passport
      t.integer :suitcases

      t.timestamps
    end
  end
end
