class Hotel < ApplicationRecord
	has_many :roooms
	ratyrate_rateable "ambiance", "service", "staff"
	has_many :reviews, dependent: :delete_all
end
