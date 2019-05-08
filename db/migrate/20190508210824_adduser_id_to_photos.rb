class AdduserIdToPhotos < ActiveRecord::Migration[5.2]
  def change
    t.string :caption
    t.integer :place_id
    t.integer :user_id

    add_index :photos, [:user_id, :place_id]
    add_index :photos, :place_id
  end
end
