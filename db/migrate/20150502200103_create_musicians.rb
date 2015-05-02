class CreateMusicians < ActiveRecord::Migration
  def change
    create_table :musicians do |t|
      t.string :first_name
      t.string :last_name
      t.string :instrument
      t.string :email_address
      t.text :phone_number

      t.timestamps
    end
  end
end
