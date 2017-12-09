class AddTestIdToStatus < ActiveRecord::Migration
  def change
    add_column :statuses, :test_id, :integer
  end
end
