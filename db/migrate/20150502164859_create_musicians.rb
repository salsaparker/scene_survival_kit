class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
      t.boolean :band
      t.string :band_name
      t.integer :phone_number
      t.string :instrument

      t.timestamps
    end
  end
end
