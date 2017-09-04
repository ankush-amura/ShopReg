require 'rails_helper.rb'
RSpec.describe Superadmin, type: :model do
  describe 'valid superadmin' do
    before(:each) do
      Sale.new(name:'johnson',email:'johnson@amuratech.in',contact:'976610052',password:'johnson123')
    end
    describe 'Associations' do
      it { should have_many(:moderators) }
    end
    describe 'Attributes' do
      it { should validate_presence_of(:name) }
      it { should validate_presence_of(:email) }
      it { should validate_presence_of(:password)}
      it { should validate_presence_of(:contact)}
    end
    describe 'invalid superadmin ' do
  end
    before(:each) do
    @m=Sale.new(name:'johnson',email:'johnson@amuratech.in',contact:'976610052',password:'johnson123')
    end
    it 'name is not valid' do
      @m.name = nil
      expect(@m).to_not be_valid
    end
    it 'email is not valid' do
      @m.email = nil
      expect(@m).to_not be_valid
    end
    it 'contact is not valid' do
      @m.contact = nil
      expect(@m).to_not be_valid
    end
    it 'password is not valid' do
      @m.password = nil
      expect(@m).to_not be_valid
    end
  end
end
