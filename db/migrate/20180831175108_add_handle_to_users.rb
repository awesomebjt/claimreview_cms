class AddHandleToUsers < ActiveRecord::Migration[5.1]
  def change
    add_column :users, :handle, :string
  end
end
