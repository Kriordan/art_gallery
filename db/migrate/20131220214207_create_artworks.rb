class CreateArtworks < ActiveRecord::Migration
  def change
    create_table :artworks do |t|
      t.string :name, null: false
      t.integer :artist_id, null: false
      t.date :created_date
      t.date :placed_on_sale_date
      t.integer :cost, null: false
      t.integer :customer_id, null: false
      t.string :type_of_art, null: false
      t.boolean :available, default: false
      t.integer :collection_id, null: false

      t.timestamps
    end
  end
end
