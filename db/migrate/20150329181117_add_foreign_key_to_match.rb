class AddForeignKeyToMatch < ActiveRecord::Migration
  def change
    add_column :matches, :stat_id, :integer
  end
end
