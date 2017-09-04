require 'rails_helper.rb'
RSpec.describe City, type: :model do
  describe 'valid City' do
    before(:each) do
      City.new(name:'Pune')
    end
    describe 'Associations' do
      it { should have_many(:areas) }
      it { should have_many(:shops) }
    end
    describe 'Attributes' do
      it { should validate_presence_of(:name) }
    end
    describe 'invalid City ' do
  end
    before(:each) do
     @c=City.new(name:'Pune')
    end
    it 'name is not valid' do
      @c.name = nil
      expect(@c).to_not be_valid
    end
  end
end
