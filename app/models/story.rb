class Story < ActiveRecord::Base # has_many lives in ActiveRecord
	has_many(:votes)
	has_many(:comments)

	validates(:title, presence: true)
	# validates(:url, presence: true)
	validates_format_of(:url, :with => URI.regexp)
	validates(:author, presence: true)
	validates(:body, presence: true, length: {minimum: 5, maximum: 200})


end
