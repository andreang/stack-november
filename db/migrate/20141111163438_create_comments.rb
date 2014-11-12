class CreateComments < ActiveRecord::Migration
  def change
    create_table :comments do |t|
      t.text :body

      t.timestamps
    end

    add_index :comments, :story_id
  end
end
