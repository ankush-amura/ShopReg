class Review < ApplicationRecord
 belongs_to :shop
 has_many   :replies
end
