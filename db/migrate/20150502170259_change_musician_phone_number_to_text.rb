class ChangeMusicianPhoneNumberToText < ActiveRecord::Migration
  def change
  	change_column :musicians, :phone_number, :text
  end
end
