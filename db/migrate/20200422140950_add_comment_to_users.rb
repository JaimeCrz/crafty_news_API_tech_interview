class AddCommentToUsers < ActiveRecord::Migration[6.0]
  def change
    change_table :comments do |t|
      t.belongs_to :user, null: false, foreign_key: true
    end
  end
end
