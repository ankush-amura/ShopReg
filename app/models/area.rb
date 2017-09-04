class Area < ApplicationRecord

   # An area can have multiple shops hence this association
   belongs_to :city
   has_many   :shops
   validates :name , presence: true
 end
