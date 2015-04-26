class CreateMediaArtists < ActiveRecord::Migration
  def change
    create_table :media_artists do |t|

      t.timestamps
    end
  end
end
