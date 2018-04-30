class CreateRooms < ActiveRecord::Migration[5.1]
  def change
    create_table :rooms do |t|
      t.integer :price
      t.integer :floor
      t.integer :room_number
      t.integer :beds
      t.boolean :is_booked
      t.boolean  :AC
      t.timestamps
    end
  end
end
