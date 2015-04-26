class CreateMerchArtists < ActiveRecord::Migration
  def change
    create_table :merch_artists do |t|

      t.timestamps
    end
  end
end
