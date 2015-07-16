class AddDurationMonthToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :duration_month, :integer
  end
end
