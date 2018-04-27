class ApplicationController < ActionController::Base
  protect_from_forgery with: :exception
  @hotel_name = Hotel.last.name
end
