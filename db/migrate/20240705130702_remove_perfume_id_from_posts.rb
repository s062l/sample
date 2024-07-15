class RemovePerfumeIdFromPosts < ActiveRecord::Migration[6.1]
  def change
    remove_column :posts, :perfume_id, :integer
  end
end
