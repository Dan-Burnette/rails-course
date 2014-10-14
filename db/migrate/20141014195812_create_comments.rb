class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.string :column
      t.references :video
      t.timestamps
    end
  end
end
