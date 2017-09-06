require 'rails_helper.rb'
RSpec.describe ModeratorsController,type: :controller do
  describe "GET index" do
  it "has a 200 status code" do
   get :index
    expect(response.status).to eq(200)
  end
end

  describe "create" do
    subject{
       post :create,
        params:{moderator:{name:"Jackson",email: "jackson@123",contact:"9175454577",password:"9175454577"}}
      }
     it "redirects to the index page" do
       expect(subject).to redirect_to controller: "superadmins",action: "index"
     end
 end

 describe "delsale" do
    subject{post :delsale, params:{id: '1'}}
      it "selects a sale person to be deleted" do
      expect(subject).to redirect_to controller: "moderators" ,action: "delsale"
    end
  end

  describe "approve" do
     subject{post:approve,params: {id: '1'}}
     it "checks if the approve status works" do
       expect(subject).to redirect_to(controller:'moderators',action:'index')
     end
  end

  describe "reject" do
    subject{post:reject,params: {id: '1'}}
    it "checks if the reject status works" do
      expect(subject).to redirect_to(controller:'moderators',action:'index')
    end
  end

  describe "remove" do
    subject{post:remove,params: {id: '1'}}
    it "checks if the remove product works" do
      expect(subject).to redirect_to(controller:'moderators',action:'index')
    end
  end

end
