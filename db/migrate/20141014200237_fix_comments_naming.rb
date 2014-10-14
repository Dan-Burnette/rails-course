class FixCommentsNaming < ActiveRecord::Migration
  def change
    change_table :comments do |t|
      t.rename :column, :comments
    end
  end
end
