class Entry < ActiveRecord::Base
#	validates :content, :length => { :minimum => 1 }
	before_create :generate_url


	private
		def generate_url
			letters = [('a'..'z'), ('A'..'Z'),(0..9)].map { |i| i.to_a }.flatten
			self.url = (0...(rand(30) + 5)).map { letters[rand(letters.length)] }.join
		end
end
