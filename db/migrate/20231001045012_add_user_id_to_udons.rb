class AddUserIdToUdons < ActiveRecord::Migration[6.1]
  def change
    add_column :udons, :user_id, :integer
  end
end
