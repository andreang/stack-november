class Comment < ActiveRecord::Base
  def change
    add_column :comments, :story_id, :integer
    belongs_to :story
  end
end
