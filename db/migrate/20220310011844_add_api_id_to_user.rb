class AddApiIdToUser < ActiveRecord::Migration[5.2]
  def change
    add_column :user, :api_id, :int
  end
end
