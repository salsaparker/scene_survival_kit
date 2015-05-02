class CreateGraphicArtists < ActiveRecord::Migration
  def change
    create_table :graphic_artists do |t|

      t.timestamps
    end
  end
end
