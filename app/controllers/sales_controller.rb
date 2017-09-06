class SalesController < ApplicationController
  def new

  end


  def newShop
  if request.post?
    @shop=Shop.new(name: params[:name])
     city=City.where(name: params[:city]).first
     area=Area.where(name: params[:area]).first
     category=Category.where(name: params[:category]).first
     sale=Sale.find('1')
     sale.shops.push(@shop)
     city.shops.push(@shop)
     area.shops.push(@shop)
     category.shops.push(@shop)
    redirect_to(sales_url)
  end
 if request.get?
   @city_names=[]
   City.all.each do |city|
     @city_names.push(city.name)
   end
   @area_names=[]
   Area.all.each do |area|
     @area_names.push(area.name)
   end
   @category_names=[]
   Category.where(role:'Category').each do |category|
      @category_names.push(category.name)
   end
 end
end


  def index
  session[:current_sales_person_id]=1
  @sale=Sale.find(session[:current_sales_person_id])
  @shops=@sale.shops
  end

  def create
     @sale=Sale.new(sale_params)
     @moderator=Moderator.find('1')
     @moderator.sales << @sale
    if @moderator.save!
      redirect_to(controller: 'moderators' , action: 'index')
    end
  end
  def sale_params
    params.require(:sales).permit(:name,:email,:password,:contact)
  end

  def edit
    if request.post?
    p "-------------"+params[:shop_id]
    @shop=Shop.where(id:params[:shop_id]).first
    @city=City.where(name:params[:city]).first
    @area=Area.where(name:params[:area]).first
    @category=Category.where(name:params[:category],role:'Category').first
    @city.shops.push(@shop)
    @area.shops.push(@shop)
    @category.shops.push(@shop)
    @shop.update(name:params[:name])
    redirect_to(sales_url)
    end
    if request.get?
    @shop=Shop.find(params[:id])
    @city_names=[]
    City.all.each do |city|
    @city_names.push(city.name)
    end
    @area_names=[]
    Area.all.each do |area|
    @area_names.push(area.name)
    end
    @categories=Category.where(role: "Category")
    @category_names=[]
     @categories.each do |category|
     puts category.name
     @category_names.push(category.name)
     end
     render('update')
   end
  end

  def remove
   Shop.find(params[:id]).destroy
   redirect_to(controller: 'sales' , action: 'index')
  end
end
