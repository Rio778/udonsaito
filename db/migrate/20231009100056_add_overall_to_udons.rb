class AddOverallToUdons < ActiveRecord::Migration[6.1]
  def change
    add_column :udons, :overall, :integer
  end
end
