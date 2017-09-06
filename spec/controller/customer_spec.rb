require 'rails_helper.rb'
RSpec.describe CustomersController,type: :controller do
  describe "GET index" do
  it "has a 200 status code" do
    get :index
    expect(response.status).to eq(200)
  end
end

  describe "comment" do
    subject{
       post :comment,
       params:{id:'1'}
      }
    it "has to comment on shop" do
    expect(subject).to render_template(:comment)
    end
  end

  describe "#reply" do
    subject{
       post :reply,
       params:{shop_id:"1",comment_id: "1",reply:"Great shop"}
      }
     it "redirects to the index page" do
       expect(subject).to render_template(:index)
     end

  end

  describe "#search" do
    subject{
       post :search,
       params:{name:"Gucci Store",city: "Pune",area:"Baner",category:"Retail"}
      }
     it "redirects to the results page" do
       expect(subject).to render_template(:results)
     end

  end
  describe "GET search" do
    it "has a 200 status code" do
      get :search
      expect(response.status).to eq(200)
    end
  end

  describe "#commented" do
    subject{
       post :commented,
       params:{comment:'very great shop',shop_id:'1'}
      }
    it "has to comment on shop" do
    expect(subject).to render_template(:index)
    end
  end
end
