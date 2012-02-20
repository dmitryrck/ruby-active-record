class RemoveMessagesUpdatedAt < ActiveRecord::Migration
  def change
    remove_column :messages, :updated_at
  end
end
