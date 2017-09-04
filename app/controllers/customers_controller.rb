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
end
