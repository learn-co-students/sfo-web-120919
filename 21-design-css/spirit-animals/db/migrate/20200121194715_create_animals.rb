class CreateAnimals < ActiveRecord::Migration[5.2]
  def change
    create_table :animals do |t|
      t.string :animal_name
      t.string :person_name
      t.string :image_url

      t.timestamps
    end
  end
end
