class CreatePosts < ActiveRecord::Migration[7.1]
  def change
    create_table :posts do |t|
      t.belongs_to :user, index: true
      t.string :title
      t.text :content
      t.timestamps
    end
  end
end
