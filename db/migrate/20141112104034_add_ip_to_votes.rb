class AddIpToVotes < ActiveRecord::Migration
  def change
  	add_column :votes, :ip_address, :string
  	add_index :stories, :votes_count
  end
end
