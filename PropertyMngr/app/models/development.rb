class Development < ActiveRecord::Base
has_many :units
belongs_to :owner
end
