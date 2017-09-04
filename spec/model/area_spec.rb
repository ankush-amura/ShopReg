require 'rails_helper.rb'
RSpec.describe Area, type: :model do
  describe 'valid Areas' do
    before(:each) do
      Area.new(name:'Baner')
    end
    describe 'Associations' do
      it { should belong_to(:city) }
      it { should have_many(:shops) }
    end
    describe 'Attributes' do
      it { should validate_presence_of(:name) }
    end
    describe 'invalid sales ' do
  end
    before(:each) do
     @s=Area.new(name:'Baner')
    end
    it 'name is not valid' do
      @s.name = nil
      expect(@s).to_not be_valid
    end
  end
end
