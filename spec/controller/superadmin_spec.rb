require 'rails_helper.rb'
RSpec.describe SuperadminsController,type: :controller do
  describe "GET index" do
  it "has a 200 status code" do
    get :index
    expect(response.status).to eq(200)
  end
end

  describe "#create" do
    subject{
        post :create,
        params:{superadmin:{name:"Jackson",email: "jackson@123",contact:"9175454577",password:"9175454577"}}
      }
    it "redirects to the index page" do
         expect(subject).to redirect_to action: "index"
    end
   end

   describe "#delmod" do
     subject{
         post :delmod,
         params:{id:'1'}
       }
     it "redirects to the index page" do
          expect(subject).to redirect_to controller: 'superadmins',action: "delmod"
     end
    end
end
