class AddDefaultToStoriesVotesCount < ActiveRecord::Migration
  def change
  	change_column :stories, :votes_count, :integer, default: 0
  	# So when we create a story it's already got a 0 vote count
  end
end
