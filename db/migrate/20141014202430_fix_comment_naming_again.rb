class FixCommentNamingAgain < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.rename :comments, :comment
    end
  end
end
