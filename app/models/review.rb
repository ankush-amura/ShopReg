class Review < ApplicationRecord

  # Each review that is provided by the customer should belong to a particular shop
  # and that should be reflected in database
    belongs_to :shop

    has_many :replies, class_name: "Review",foreign_key: "comment_id"

    belongs_to :comment, class_name: "Review" , optional: true

    validates :message, presence: true
end
