class AddAlertTypeToDeals < ActiveRecord::Migration
  def change
    add_column :deals, :alert_type, :string
  end
end
