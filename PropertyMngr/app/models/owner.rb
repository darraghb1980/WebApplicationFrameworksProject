class Owner < ActiveRecord::Base

has_many :units
has_many :developments

def fullName
self.firstname + " " + self.lastname
end

end
