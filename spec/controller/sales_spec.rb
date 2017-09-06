require 'rails_helper.rb'
RSpec.describe SalesController,type: :controller do
  describe "GET index" do
  it "has a 200 status code" do
    get :index
    expect(response.status).to eq(200)
  end
end

  describe "#create" do
    subject{
       post :create,
       params:{sales:{name:"Jackson",email: "jackson@123",contact:"9175454577",password:"9175454577"}}
      }
     it "redirects to the index page" do
       expect(subject).to redirect_to controller: "moderators",action: "index"
     end
  end

  describe "#newShop" do
      subject{
         post :newShop,
         params:{name:"Reebok Showroom",city: "Pune" , area: "Baner",category: "Retail"}
        }
        it "creates new Shop and Redirects to index page" do
          expect(subject).to redirect_to(controller: "sales",action: "index")
        end
    end


   describe "GET newShop" do
      it "has a 200 status code" do
        get :newShop
        expect(response.status).to eq(200)
      end
   end


   describe "GET Edit" do
          it "has a 200 status code" do
            get :edit ,params: {id:'1'}
            expect(response.status).to eq(200)
          end
   end

    describe "#Edit" do
          subject{
             post :edit,
             params:{shop_id:'1', name:"Renault Showroom",city: "Pune" , area: "Baner",category: "Retail"}
                 }
          it "creates new Shop and Redirects to index page" do
             expect(subject).to redirect_to(controller: "sales",action: "index")
          end
     end


    describe "#remove" do
        subject{ post :remove ,params: {id:'1'}}
          it "removes the shop from database" do
          expect(subject).to redirect_to controller:'sales',action: 'index'
        end
    end
end
