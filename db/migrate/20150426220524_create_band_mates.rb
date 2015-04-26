class CreateBandMates < ActiveRecord::Migration
  def change
    create_table :band_mates do |t|

      t.timestamps
    end
  end
end
