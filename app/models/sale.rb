class Sale < ApplicationRecord
belongs_to :moderator
has_many :shops, as: :property
end
