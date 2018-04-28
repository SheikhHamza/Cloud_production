class CreateBookings < ActiveRecord::Migration[5.1]
  def change
    create_table :bookings do |t|
      t.references :user, foreign_key: true
      t.references :room, foreign_key: true
      t.datetime :from
      t.datetime :to
      t.integer :bill

      t.timestamps
    end
  end
end
