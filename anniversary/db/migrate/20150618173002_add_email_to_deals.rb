class AddEmailToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :email, :string
  end
end
