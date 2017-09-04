class Sale < ApplicationRecord

  after_validation do |salePerson|
#    salePerson.name.capitalize!
#    salePerson.contact="+91 "+salePerson.contact
  end

  # each sale person belongs to the moderator and should consult only that moderator
  belongs_to :moderator

  #each sale person has many shop that he inserted and its refrerred as property
  has_many :shops

  # validating name for sale person so that the name should be present before shop is put in table
  validates :name, presence: true

  # validating email for sale person so that the email should be present before shop is put in table
  validates :email ,presence: true,confirmation: true

  # validating password for sale person so that the password should be unique before shop is put in table
  validates :password ,presence: true, confirmation: true , uniqueness: true , length: {minimum: 8}

  # validating contact for sale person so that the contact should be unique before shop is put in table
   validates :contact ,presence: true, uniqueness: true , numericality: true , length: { is: 10 }

end
