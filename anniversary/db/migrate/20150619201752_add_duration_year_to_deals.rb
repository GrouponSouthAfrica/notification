class AddDurationYearToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :duration_year, :integer
  end
end
