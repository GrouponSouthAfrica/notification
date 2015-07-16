class RemoveTypeFromDeals < ActiveRecord::Migration
  def change
    remove_column :deals, :type, :string
  end
end
