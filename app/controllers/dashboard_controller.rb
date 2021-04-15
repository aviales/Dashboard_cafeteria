class DashboardController < ApplicationController
  def index
    @sales = Sale.all
    @sales_grouped_by_month = Sale.group_by_month(:date, last:12).sum(:price)
    @sales_grouped_by_month_quantity = Sale.group_by_month(:date, last:12).sum(:amount)

    @avg_sales_by_month = Sale.group_by_month(:date, last:12).order(date: :asc).average(:amount)

    @sales_grouped_by_origin = Sale.where(date: 1.year.ago..Date.today).group(:coffee_origin).count

    @sales_grouped_by_origin6 = Sale.where(date: 6.months.ago..Date.today).group(:coffee_origin).count

    @sales_grouped_by_origin3 = Sale.where(date: 3.months.ago..Date.today).group(:coffee_origin).count

    @sales_grouped_by_origin1 = Sale.where(date: 1.month.ago..Date.today).group(:coffee_origin).count
    
    @sales_grouped_by_name = Sale.where(date: 1.year.ago..Date.today).group(:coffee_name).count
    @sales_grouped_by_name6 = Sale.where(date: 6.months.ago..Date.today).group(:coffee_name).count
    @sales_grouped_by_name3 = Sale.where(date: 3.months.ago..Date.today).group(:coffee_name).count
    @sales_grouped_by_name1 = Sale.where(date: 1.month.ago..Date.today).group(:coffee_name).count
      
  end
end
