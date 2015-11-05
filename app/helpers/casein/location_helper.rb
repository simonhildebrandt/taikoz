module Casein
  module LocationHelper
    def location_options
      Location.all.map{ |location| [location.full_address, location.id]}
    end
  end
end
