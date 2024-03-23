class AddVoteFieldToPost < ActiveRecord::Migration[7.1]
  def change
    add_column :posts, :vote, :integer, default: 0
  end
end
