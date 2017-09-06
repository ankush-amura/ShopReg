class CustomersController < ApplicationController
  def new
  end
  def index
     @shops=Shop.all
   end

  def comment
  id=params[:id]
  @shop=Shop.find(id)
  @comments=@shop.reviews.where(role: "Review")
  render('comment')
  end

def commented
  comment=params[:comment]
  print "---------------------------------"+comment
  @review=Review.new(message: comment, role: "Review")
  @shop=Shop.find(params[:shop_id])
  @shop.reviews.push(@review)
  @review.save
  @shops=Shop.all
  render('index')
end
  def edit

  end
  def reply
      shop_id=params[:shop_id]
      comment_id=params[:comment_id]
      reply=params[:reply]
     @shop=Shop.find(shop_id)
     @review=Review.find(comment_id)
     @reply=Review.new(message: reply,role:'Reply')
     @review.replies.push(@reply)
     @shop.reviews.push(@reply)
     p @reply
     @shops=Shop.all
     render('index')
  end

  def search

    if request.post?
     city=City.where(name:params[:city])
     area=Area.where(name:params[:area])
     category=Category.where(name:params[:category])
     name=params[:name]
     @shops=Shop.where(name:name,city_id:city.first.id,area_id:area.first.id,category_id:category.first.id)
     render('results')
    end
    if request.get?
      @city=City.all
      @city_names=[]
      @city.each do |city|
          @city_names.push(city.name)
      end
      @area=Area.all
      @area_names=[]
      @area.each do |area|
      @area_names.push(area.name)
      end
      @category=Category.where(role: "Category")
      @category_names=[]
      @category.each do |category|
      @category_names.push(category.name)
      end
    end
  end
end
