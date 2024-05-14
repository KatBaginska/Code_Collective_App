class AddDetailsToEvents < ActiveRecord::Migration[7.1]
  def change
    add_column :events, :image_url, :string
    add_column :events, :start_time, :datetime
    add_column :events, :end_time, :datetime
  end
end
