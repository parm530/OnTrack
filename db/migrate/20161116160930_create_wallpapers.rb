class CreateWallpapers < ActiveRecord::Migration[5.0]
  def change
    create_table :wallpapers do |t|
      t.string :link

      t.timestamps
    end
  end
end
