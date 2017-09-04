require 'rails_helper.rb'
RSpec.describe Shop, type: :model do
  describe 'valid sales' do
    before(:each) do
      Shop.new(name:'Sweets')
    end
    describe 'Associations' do
      it { should belong_to(:city) }
      it { should belong_to(:area) }
      it { should belong_to(:category) }
      it { should belong_to(:sale) }
    end
    describe 'Attributes' do
      it { should validate_presence_of(:name) }
    end
    describe 'invalid sales ' do
  end
    before(:each) do
     @s=Shop.new(name:'Sweet')
    end
    it 'name is not valid' do
      @s.name = nil
      expect(@s).to_not be_valid
    end
  end
end
