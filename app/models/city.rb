class City < ApplicationRecord
   # A city can have many areas and each area can have many shops hence this association
  has_many :areas
   # A city can have many shops and hence its necessary tomhave this association
   has_many :shops

   validates :name, presence: true
end
