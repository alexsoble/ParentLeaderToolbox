class AddStarsColumnToToolstars < ActiveRecord::Migration
  def change
    add_column :toolstars, :stars, :boolean, null: false, default: false
  end
end
