class AddPerfumeIdToPosts < ActiveRecord::Migration[6.1]
  def change
    add_column :posts, :perfume_id, :integer
  end
end
