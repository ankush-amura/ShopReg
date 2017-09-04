class Category < ApplicationRecord

  # A particular category of shop can have many shops within and so this relation is specified
  has_many :shops
  has_many :sub_categories , class_name: 'Category',foreign_key: 'category_id'
  belongs_to :category, class_name: 'Category', optional: true
  # validation is provided for category attribute for its presence and uniqueness
  validates :name, presence: true, uniqueness: true
  validates :role , presence: true
end
