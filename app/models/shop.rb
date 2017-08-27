class Shop < ApplicationRecord
belongs_to :property , polymorphic: true
has_many   :reviews
end
