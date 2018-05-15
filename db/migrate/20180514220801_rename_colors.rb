
class RenameColors < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :color, :grade
  end
end
