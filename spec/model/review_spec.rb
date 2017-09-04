require 'rails_helper.rb'
RSpec.describe Review, type: :model do
  describe 'valid Review' do
    before(:each) do
      Review.new(message:'Good')
    end
    describe 'Associations' do
      it { should belong_to(:shop)  }
      it { should belong_to(:comment) }
      it { should have_many(:replies) }
    end
    describe 'Attributes' do
      it { should validate_presence_of(:message) }
    end
    describe 'invalid Reviiew ' do
  end
    before(:each) do
     @r=Review.new(message:'Good')
    end
    it 'message is not valid' do
      @r.message = nil
      expect(@r).to_not be_valid
    end
  end
end
