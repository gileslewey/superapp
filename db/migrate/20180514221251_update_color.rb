class UpdateColor < ActiveRecord::Migration[5.1]
  def change
    rename_column :products, :colour, :grade
  end
end
