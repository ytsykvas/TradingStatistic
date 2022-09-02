class CreateTrades < ActiveRecord::Migration[7.0]
  def change
    create_table :trades do |t|
      t.integer :user_id
      t.decimal :tax
      t.string :ticker
      t.boolean :long_short
      t.integer :volume
      t.decimal :price_in
      t.decimal :price_out

      t.timestamps
    end
  end
end
