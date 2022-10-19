class CreateInfos < ActiveRecord::Migration[7.0]
  def change
    create_table :infos do |t|
      t.decimal :winrate
      t.decimal :net
      t.decimal :net_per_share
      t.decimal :balance

      t.timestamps
    end
  end
end
