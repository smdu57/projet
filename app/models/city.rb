class City < ActiveRecord::Base
  before_validation :load_position
  validates :lat, :long, presence: true
  
  private
  def load_position
    places = Nominatim.search(name).limit(1).first
    if places
      self.lat = places.lat
      self.long = places.lon
    end
  end
end
