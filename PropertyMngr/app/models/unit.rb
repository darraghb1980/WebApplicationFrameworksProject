class Unit < ActiveRecord::Base
belongs_to :owner
belongs_to :development

acts_as_gmappable 

   def gmaps4rails_address
      "#{self.address1}"
 end

def gmap4rails_infowindow
	"<h>#{self.address1}</h>"
	
end

end
