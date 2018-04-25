class Hotel < ApplicationRecord
	has_many :rooms, dependent: :delete_all
end
