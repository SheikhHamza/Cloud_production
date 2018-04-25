class AddAttributeToUser < ActiveRecord::Migration[5.1]
  def change
  	add_column :users, :is_admin, :boolean, default: false
  	add_column :users, :bio,:text
  	add_column :users, :profile_picture_url,:string
  end
end
