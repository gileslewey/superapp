class AddQualityToProducts < ActiveRecord::Migration[5.1]
  def change
    add_column :products, :quality, :string
  end
end
