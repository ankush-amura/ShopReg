class Superadmin < ApplicationRecord

  before_validation  :capitalizeName , on: :create
  # each superadmin can have many moderators and hence can add or remove moderators
  has_many :moderators

  # validating the name which should be present whicle inserting into database table
  validates :name, presence: true

  # validating email id for its confirmation to be provided
  validates :email , presence: true

  # validating the password with confirmation and length attributes
  validates :password , presence: true,confirmation: true , uniqueness: true , length: {minimum: 6}

  # validating the contact with uniqueness and numericality
  validates :contact , presence:  true,uniqueness: true , numericality: true , length: { is: 10 }

  private
     # this method capitalizes the name of the admin before the superadmin is put into database
     def capitalizeName
        # name of the superadmin that is to be inserted into the database
      #self.name = self.name.capitalize
       #puts :name
     end
end
