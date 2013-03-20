class AddCategoryIdColumnToToolstars < ActiveRecord::Migration
  def change
    add_column :toolstars, :category_id, :integer
  end
end
