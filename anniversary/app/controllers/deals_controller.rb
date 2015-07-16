class DealsController < ApplicationController
  def index
  	@deals = Deal.all
  end

def show 
	@deal = Deal.find(params[:id])
end

 def new
    @deal = Deal.new
  end
 
  def edit
    @deal = Deal.find(params[:id])
  end
 
 def create 
  @deal =Deal.new(deal_params)
  if @deal.save
  redirect_to deals_path
else
  render :new
end
end
 
  def update
    @deal = Deal.find(params[:id])
 
    if @deal.update(deal_params)
      redirect_to deals_path
          else
      render 'edit'
  end
end
 
  def destroy
    @deal = Deal.find(params[:id])
    @deal.destroy
 
    redirect_to deals_path
  end

   def wish
    @deal = Deal.find(params[:id])
    
    @deal.save
    UserMailer.email(@deal).deliver_now 
     flash.now[:notice] = 'Successfully Delivered!'
    redirect_to deals_path
  end

     def wish2
@deals = Deal.all
    @annideal =[]
    month = Time.now.utc.to_date.month 
    day = Time.now.utc.to_date.day 
    year = Time.now.utc.to_date.year 
   @deals.each do |deal| 
   first_deal = []
   first_deal <<deal.start_date
   first_deal=first_deal.last.to_s.split"-"
    if month ==first_deal[1] && day==first_deal[2] 
   @annideal <<deal
    end 
    end 
    @deal.save
    @annideal.each do |ann|
    UserMailer.email(ann).deliver_now 
  end
     flash.now[:notice] = 'Successfully Delivered!'
    redirect_to deals_path
  end

   private
    def deal_params
      params.require(:deal).permit(:name, :description, :start_date, :email, :duration_day, :duration_month, :duration_year, :alert_type)
    end
end