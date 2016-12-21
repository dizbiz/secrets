class RemovedLikesColumnForId < ActiveRecord::Migration
  def change
  	add_reference :likes, :secret, foreign_key: true
  	remove_column :likes, :secret, :string
  	remove_column :likes, :references, :string
  end
end
