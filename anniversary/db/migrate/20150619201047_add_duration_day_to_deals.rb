class AddDurationDayToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :duration_day, :integer
  end
end
