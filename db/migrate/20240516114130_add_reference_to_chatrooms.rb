class AddReferenceToChatrooms < ActiveRecord::Migration[7.1]
  def change
    add_reference :chatrooms, :event, foreign_key: true
  end
end
