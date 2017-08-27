class Category < ApplicationRecord
has_many :shops , as: :property
end
