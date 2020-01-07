class CreateGames < ActiveRecord::Migration
  def change
    create_table :games do |t|
      t.string :title
      t.string :description
      t.integer :num_players
      t.string :image_url
    end
  end
end
