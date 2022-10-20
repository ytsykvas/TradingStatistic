class AddColumnToTrade < ActiveRecord::Migration[7.0]
  def change
    add_column :trades, :net, :decimal
    add_column :trades, :net_per_share, :decimal
  end
end
