class TrnLocation < ActiveRecord::Base

  def latitude_up
    self.latitude = self.latitude * 2
  end

  def longitude_up
    self.longitude = self.longitude * 2
  end

end
