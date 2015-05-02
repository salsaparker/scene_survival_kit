class CreateVisualArtists < ActiveRecord::Migration
  def change
    create_table :visual_artists do |t|
      t.string :first_name
      t.string :last_name
      t.string :type
      t.text :phone_number
      t.text :email_address

      t.timestamps
    end
  end
end
