class AddShopToUdons < ActiveRecord::Migration[6.1]
  def change
    add_column :udons, :shop, :string
  end
end
