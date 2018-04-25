class CreateHotels < ActiveRecord::Migration[5.1]
  def change
    create_table :hotels do |t|
      t.string :name
      t.text :address
      t.text :description
      t.string :phone_number

      t.timestamps
    end
  end
end
