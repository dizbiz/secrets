class AddReferenceToLikes < ActiveRecord::Migration
  def change
  	remove_column :likes, :secret_id, :integer
    add_reference :likes, :secret, index: true
  end
end
