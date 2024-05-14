class RemoveTimeFromEvents < ActiveRecord::Migration[7.1]
  def change
    remove_column :events, :time, :time
  end
end
