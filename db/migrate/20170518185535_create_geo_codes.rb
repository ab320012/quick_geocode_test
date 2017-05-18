class CreateGeoCodes < ActiveRecord::Migration[5.0]
  def change
    create_table :geocodes do |t|
      t.decimal :lat, precision:10, scale:6 
      t.decimal :long, precision:10, scale: 6
      t.string :address
    end
  end
end
