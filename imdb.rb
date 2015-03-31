require 'rubygems'
require 'active_record'

 # name of the second ruby file we will be using - require_relative ''
# require 'imdb'

ActiveRecord::Base.establish_connection(
  adapter: 'sqlite3',
  database: 'movies_imdb.sqlite'
)

class TVShow < ActiveRecord::Base
  # we have name, own_rating and own_comments available

	validates :name, presence: true, uniqueness: true
	validates_length_of :own_comments, :minimum => 5, :maximum => 1000, :allow_blank => true
	validate :rating_1_to_10


	def rating_1_to_10
		own_rating.to_i < 10 && own_rating.to_i > 1
		else
			errors.add(:name, 'not allowed')
	end
end








