class AddDurationToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :duration, :integer
  end
end
