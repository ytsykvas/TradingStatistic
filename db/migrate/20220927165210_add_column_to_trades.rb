class AddColumnToTrades < ActiveRecord::Migration[7.0]
  def change
    add_column :trades, :user_id, :integer
  end
end
