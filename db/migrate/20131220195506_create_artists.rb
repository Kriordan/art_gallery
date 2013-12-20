class CreateArtists < ActiveRecord::Migration
  def change
    create_table :artists do |t|
      t.string :name, null: false
      t.string :birthplace, default: 'Unknown'
      t.string :style_of_art, null: false
      t.string :email, default: 'Unknown'

      t.timestamps
    end
  end
end
