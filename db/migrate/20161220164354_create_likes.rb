class CreateLikes < ActiveRecord::Migration
  def change
    create_table :likes do |t|
      t.string :secret
      t.string :references
      t.references :user, index: true

      t.timestamps
    end
  end
end
