class Painting < ActiveRecord::Base
  belongs_to :trip
  mount_uploader :image, ImageUploader

  def trip_name
    trip.try(:name)
  end

  def trip_name=(name)
    self.trip = Trip.find_by(name: name) if name.present?
  end
end
