require 'rails_helper.rb'
RSpec.describe Category, type: :model do
  describe 'valid categories' do
    before(:each) do
      Category.new(name:'Retail',role: 'Category')
    end
    describe 'Associations' do
      it { should belong_to(:category) }
      it { should have_many(:shops) }
      it { should have_many(:sub_categories) }
    end
    describe 'Attributes' do
      it { should validate_presence_of(:name) }
      it {should validate_presence_of(:role)}
    end
    describe 'invalid sales ' do
  end
    before(:each) do
     @c=    Category.new(name:'Retail',role: 'Category')
    end
    it 'name is not valid' do
      @c.name = nil
      expect(@c).to_not be_valid
    end
    it 'role is not valid' do
      @c.role = nil
      expect(@c).to_not be_valid
    end
  end
end
